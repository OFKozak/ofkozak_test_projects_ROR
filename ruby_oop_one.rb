# *** task_1 ***
class Car   
end
# *** task_2 ***
c = Car.new
    puts "\t#3" # *** task_3 ***
puts "The class of the object c is #{c.class}"
    puts "\t#4" # *** task_4 ***
puts "#{c.is_a? Car} # => returns true if Car is the class of the object c"
# *** task_5 ***
class Person
    def initialize(name)
        @name = name
    end
end
# *** task_6 ***
class Person
    def initialize(name)
        @name = name
    end
    
    def name
        @name
    end

    def forename
        @name
    end
end
    puts "\t#7" # *** task_7 ***
officer = Person.new("Alex")
puts officer.name
puts officer.forename
    puts "\t#8" # *** task_8 ***
class Person
    def initialize(name)
        @name = name
    end

    attr_reader :name
end
puts Person.new("Betty").name
    puts "\t#9" # *** task_9 ***
class Person
    def initialize(name)
        @name = name
    end

    attr_reader :name

    def greeting
        "Hello this is #{@name}."
    end
end
puts Person.new("Sam").greeting
    puts "\t#10" # *** task_10 ***
class Person
    def initialize(name)
        @name = name
    end

    attr_reader :name

    def name=(new_value)
        @name = new_value
    end 

    def greeting
        "Hello this is #{@name}."
    end
end
officer = Person.new("Alex")
puts officer.name
officer.name = "Capt Alex Clark"
puts officer.name
puts officer.greeting
# *** task_11 ***
class Person
    def initialize(name)
        @name = name
    end

    attr_writer :name

    attr_reader :name

    def greeting
        "Hello this is #{@name}."
    end
end
# *** task_12 ***
class Person
    def initialize(name)
        @name = name
    end

    attr_accessor :name

    def greeting
        "Hello this is #{@name}."
    end
end
    puts "\t#13" # *** task_13 ***
class RubyClass
    def RubyClass.method_one
        "The RubyClass.method_one is a class method"
    end

    def self.method_two
        "The RubyClass.method_two is a class method, too"
    end

    class << self
        def method_three
            "The RubyClass.method_three is another class method"
        end
    end
end
puts RubyClass.method_one
puts RubyClass.method_two
puts RubyClass.method_three
    puts "\t#14" # *** task_14 ***
class VisibilityClass
    def public_method
        "This is a public method"
    end

    private
    
    def private_method
        "This is a private method"
    end

    protected

    def protected_method
        "This is a protected method"
    end
end
method_visibility = VisibilityClass.new

puts method_visibility.public_method

# puts method_visibility.private_method # => private method `private_method' called for
#<VisibilityClass:0x00000000050c23a8> (NoMethodError)

# puts method_visibility.protected_method # => protected method `protected_method' called for
#<VisibilityClass:0x000000000500a028> (NoMethodError)
    puts "\t#15" # *** task_15 ***
class VisibilityClass
    def public_method
        puts "This is a public method"
        private_method
        self.protected_method
    end

    def public_method_one(other = VisibilityClass.new) # it's another way
        puts "This is a public method"
        private_method
        other.protected_method
    end

    private def private_method
        puts "This is a private method"
    end

    protected def protected_method
        puts "This is a protected method"
    end
end
method_visibility = VisibilityClass.new

method_visibility.public_method

puts ""

method_visibility.public_method_one

# method_visibility.private_method # => private method `private_method' called for
#<VisibilityClass:0x00000000050312b8> (NoMethodError)

# method_visibility.protected_method # => protected method `protected_method' called for
#<VisibilityClass:0x000000000511b250> (NoMethodError)