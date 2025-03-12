def get_order
    i = 1
    puts "введите кол-во заказов"
      count_orders = gets.to_i
      count_orders.times do
      puts "введите название блюда № #{i}"
      name_dish = gets.to_s
      puts "введите цену блюда"
      cost_dish = gets.to_i
      puts "введите кол-во блюд"
      count_dish = gets.to_i
      i+=1
    end
  end

  get_order
