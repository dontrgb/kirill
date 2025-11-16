require_relative '../models/order_calculator'

class OrderPrinter
    def initialize(dishes)
        @dishes = dishes
        @order_calculator = OrderCalculator.new(@dishes)
    end

    def receipt
        @dishes.each do |dish|
            puts "#{dish.name} x #{dish.count} = #{dish.cost*dish.count} руб."
        end

        puts "Общая сумма заказа: #{@order_calculator.all_price} руб."

        if dish.count > 3
            puts "Скидка: #{@order_calculator.all_price*0.15} руб."
        end
        
       @order_calculator.all_price
    end