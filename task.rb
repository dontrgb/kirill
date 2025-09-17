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
class Order
  def initialize
    @order = []
    get_order 
  end

  def all_price
    price = 0

    @order.each do |order|
      if order[:count] > 3
        price += (order[:cost] * order[:count]) * 0.85
      else
        price += (order[:cost] * order[:count])
      end
    end

    price
  end

  def costly_dish
    cost = 0
    name = ''
    @order.each do |x|
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
  
  private

  def get_order
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
      @order << {name: name_dish, cost: cost_dish, count: count_dish}
    end

    @order
  end
end


