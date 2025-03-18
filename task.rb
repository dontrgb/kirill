=begin
напиши программу для управления заказами в ресторане. Программа должна:

Запрашивать у пользователя количество заказов.
Для каждого заказа пользователь вводит блюдо, его цену и количество порций.
Программа должна:
Рассчитать сумму заказа.
Применять скидку 15% на блюда, если их количество больше 3.
Определять самое дорогое блюдо в заказе.
Проверять, не превышает ли сумма заказа заданного лимита (например, 10 000 руб.). Если превышает, сообщить об этом.
В конце программа выводит чек с общей суммой, самым дорогим блюдом и общей скидкой.

=end

def get_order
    orders = []
    i = 1
    puts "введите кол-во заказов"
      count_orders = gets.to_i
      count_orders.times do
      puts "введите название блюда № #{i}"
      name_dish = gets.to_s.strip
      puts "введите цену блюда"
      cost_dish = gets.to_i
      puts "введите кол-во блюд"
      count_dish = gets.to_i
      i+=1 
      orders << {name: name_dish, cost: cost_dish, count: count_dish}
    end
     orders
  end

    def all_price
        price = 0
      get_order.each do |order|
        price += (order[:cost] * order[:count])
      end
      puts price
    end



    all_price 
    price  = gets.to_i
    if price  > 10000
        puts "сумма заказа превышает лимит"
    else
        puts "сумма заказа не превышает лимит"
    end
