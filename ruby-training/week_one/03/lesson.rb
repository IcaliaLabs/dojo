# Ruby Icalia Labs Training
# Docs:
# https://ruby-doc.org/core-2.4.1/
#

# Modules
# Encapsulates behavior
# Modules are a great way to share behavior among classes,
# they are often use as interfaces, this is because Ruby only supports
# inheritance from 1 class

module Area
  PI = 3.1416

  def self.square(n)
    n * n
  end

  def self.rectangle(a,b)
    a * b
  end

  def self.circle(r)
    PI * r * r
  end

end

Area.square(10) #=> 100
Area.rectangle(10, 5) #=> 50
Area.circle(5) #=> 78.54

# The code below ilustrates how you can share behavior through modules
module Registerable
  def encrypt_password; end
  def valid_password?; end
  def valid_email?; end
  def registration_keys; end
  def register; end
end

module Confirmable
  def confirmed?; end
  def confirm!; end
  def unconfirm!; end
  def confirmation_keys; end
end

class User
  include Registerable
  include Confirmable
end

class Customer < User
end

module Icalia
  class User

  end
end

# Classes
# Higlights:
#  - Classes names are written in CamelCase
#  - Can be reopen
#  - Can be completely overriden

class Developer
  # initialize sets up attributes for a new object
  def initialize(name, age)
    # @variable_name are called instance variables, and are accessible everywhere in the class,
    # something like private methods
    @name = name
    @age = age
  end
end

# Create a Developer object
developer = Developer.new("Abraham", 29)
puts developer.inspect

# Access attributes & manipulate the state of an object

class Animal
  attr_reader :age # This creates a getter method called age
  attr_writer :name # This creates a setter method called name
  attr_accessor :owner # This creates both methods(getter, setter)

  def initialize(name)
    @name = name
    @age = 0
  end
end


animal = Animal.new("Rex")
animal.name = "Frank"
animal.owner = developer
animal.owner

# Behavior for an object
class Cow
  attr_reader :name

  def initialize(name)
    @name = name
  end

  # This is an instance method, meaning that it is only visible
  # for each instance of the class
  def make_noise
    "Muuu!"
  end
end

cow = Cow.new("Ralph")
cow.make_noise #=> "Muuu!"

# Class methods
#
class Horse

  def initialize(name)
    @name = name
  end

  def make_noise
    "Iiijaaaaa!"
  end

  # This class method is accessible directly by the class, and you can easily
  # identify them by watching the `self` right after the `def` reserved word
  def self.description
    'Big Animal'
  end

  def description
    "#{Horse.description} named #{@name}"
  end
end

horse = Horse.new('Spirit')
puts Horse.description # => Big Animal
puts horse.description # => Big Animal named Spirit

# Inheritance

class Horse < Animal
  def make_noise
    "Iiijaaaaa!"
  end

  # This class method is accessible directly by the class, and you can easily
  # identify them by watching the `self` right after the `def` reserved word
  def self.description
    'Big Animal'
  end

  def description
    "#{Horse.description} named #{@name}"
  end
end

class Cow < Animal
  def make_noise
    "Muuu!"
  end
end
