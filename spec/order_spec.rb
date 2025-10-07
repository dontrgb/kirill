require_relative '../task'
require 'pry'

RSpec.describe Order do
  let(:order) do
    Order.new([
      { name: "Пицца", cost: 500, count: 2 },
      { name: "Суши", cost: 300, count: 4 }, # скидка 15%
      { name: "Стейк", cost: 1500, count: 1 }
    ])
  end

  describe "#all_price" do
    it "считает сумму заказа с учетом скидки" do
      expect(order.all_price).to eq(3520)
    end
  end

  describe "#limit" do
    it 'should return true if the total price of the order is less than 10000' do
      order
      expect(order.limit).to eq(true)
    end
  end
  
  describe "#costly_dish" do
    it 'should return the most expensive dish in the order with name and cost' do
      order
      expect(order.costly_dish).to eq( { name: "Стейк", cost: 1500 })
    end
  end
   
  describe "#limit" do
    it 'should return false if the total price of the order is more than 10000' do
      order = Order.new1([{ name: 'huge set', cost: 11000, count: 1 }])
      expect(order.limit).to eq(false)
    end
  end

end

