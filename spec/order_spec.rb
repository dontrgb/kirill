require_relative '../task'

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
end
