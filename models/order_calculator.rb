class OrderCalculator
    def initialize(order)
        @order = order
    end
end

def calculate
    @order.all_price.times do |i|
        dish = @order[i]
        if dish.count >3
            price += (dish.cost * dish.count) * 0.85
        else
            price += (dish.cost * dish.count)
        end
    end
end