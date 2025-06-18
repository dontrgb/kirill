require_relative 'task'

order = Order.new
puts order.all_price
puts order.costly_dish

puts "вы превысили лимит" if order.limit == true