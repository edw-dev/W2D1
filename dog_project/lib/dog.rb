class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end
    def name
        @name
    end
    def breed
        @breed
    end
    def age
        @age
    end
    def age=(num)
        @age = num
    end
    def bark
        if self.age >3
            @bark.upcase
        else
            @bark.downcase
        end
    end
    def favorite_foods
        @favorite_foods
    end
    def favorite_food?(food)
        if favorite_foods.include?(food)
            true
        else
            favorite_foods.each do |foods|
                return true if foods.downcase == food.downcase
            end
            return false
        end
    end
end
