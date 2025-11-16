require_relative '../models/dish'

class OrderInput
    def collect_dishes
        dishes = []
    
        puts "введите кол-во заказов"
        count_orders = gets.to_i
    
        (1..count_orders).each do |i|
          puts "введите название блюда № #{i}"
          name_dish = gets.to_s.strip
          puts "введите цену блюда"
          cost_dish = gets.to_i
          puts "введите кол-во блюд"
          count_dish = gets.to_i
          dishes << Dish.new(name_dish, cost_dish, count_dish)
        end
    
        dishes
      end
