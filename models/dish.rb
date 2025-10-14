class Dish
    attr_reader :name, :cost, :count

    def initialize(name, cost, count)
        @name = name
        @cost = cost
        @count = count
    end
end
