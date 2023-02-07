# class syntax

class Person
    # getter/setters
    attr_accessor :name, :age

    def initialize(name, age)
        @name = name
        @age = age
    end

    def greet
        puts "Greetings from person object whose name is #{name} & age is #{age}"
    end
end

per = Person.new('Test Subject', 20)
per.greet
puts per.name
puts per.age


# Inheritance
class Student < Person
    attr_accessor :grade
    
    def initialize(name, age, grade)
        # passing name, age to parent class
        super(name, age)
        @grade = grade
    end

    def greet
        # calling greet function in parent class.
        super
        puts "Currently in standard-#{grade}."
    end
end

s = Student.new('T S', 21, 12)
puts s.name
puts s.age

s.greet