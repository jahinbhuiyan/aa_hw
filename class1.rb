class Dog

    def initialize(name)
        @name = name
    end

    def self.bark
        "WOOF!!!"
    end

    def self.compare_dogs(dog_1, dog_2)
        if (dog_1.name.length > dog_2.name.length )
            return dog_1.name
        else
            return dog_2.name
        end
    end

    def yell_name
        @name.upcase + "!"
    end

    def name
        @name
    end

end

d1 = Dog.new("Fidoooooo")
d2 = Dog.new("Spot")

p Dog.compare_dogs(d1,d2)


