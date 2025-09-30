require_relative 'task'

describe all_price do
  it 'should return the total price of the order' do
    order = Order.new([{ name: 'Pizza', cost: 1000, count: 1 }])
    expect(order.all_price).to eq(1000)
  end
end

describe limit do
  it 'should return true if the total price of the order is less than 10000' do
    order = Order.new([{ name: 'Pizza', cost: 1000, count: 1 }])
    expect(order.limit).to eq(true)
  end
end

describe costly_dish do
  it 'should return the most expensive dish in the order with name and cost' do
    order = Order.new([{ name: 'Pizza', cost: 1000, count: 1 }])
    expect(order.costly_dish).to eq({ name: 'Pizza', cost: 1000 })
  end
end
 
describe limit do
  it 'should return false if the total price of the order is more than 10000' do
    order = Order.new([{ name: 'Pizza', cost: 1000, count: 1 }])
    expect(order.limit).to eq(false)
  end
end