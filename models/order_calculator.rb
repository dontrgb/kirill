require_relative 'dish'

class OrderCalculator
    def initialize(dishes)
        @dishes = dishes
    end

    def all_price
        price = 0
    
        @dishes.each do |dish|
          if dish.count > 3
            price += (dish.cost * dish.count) * 0.85
          else
            price += (dish.cost * dish.count)
          end
        end
    
        price
      end

      def costly_dish
        cost = 0
        name = ''
        @dishes.each do |dish|
          if dish.cost > cost
            cost = dish.cost
            name = dish.name
          end
        end
        { name: name, cost: cost }  
      end

      def limit
        return true if all_price > 10000
    
        false
      end
end


