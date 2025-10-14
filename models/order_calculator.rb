require_relative 'dish'
dish = Dish.new

class OrderCalculator
    def initialize(order)
        @dish = dish
    end

    def all_price
        price = 0
    
        @dish.each do |order|
          if Dish.new[:count] > 3
            price += (Dish.new[:cost] * Dish.new[:count]) * 0.85
          else
            price += (Dish.new[:cost] * Dish.new[:count])
          end
        end
    
        price
      end

      def costly_dish
        cost = 0
        name = ''
        @dish.each do |x|
          if x[:cost] > cost
            cost = x[:cost]
            name = x[:name]
          end
        end
        { name: name, cost: cost }  
      end

      def limit
        return true if all_price > 10000
    
        false
      end
end


