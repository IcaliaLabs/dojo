# Ruby Icalia Labs Training
# Docs:
# https://ruby-doc.org/core-2.4.1/
#

# Functions

def square(number)
  number * number
end

square(10) #=> This will return 100

def plus(a, b)
  a + b
end

plus(5, 8) #=> This will return 13

def greeting(name)
  "Hi my name is #{name}, nice to meet you!"
end

greeting("Abraham") #=> Hi my name is Abraham, nice to meet you!

def concatenator(string1, string2)
  "#{string1} #{string2}"
end

concatenator("Hola", "Mundo") #=> Hola Mundo

def repeater(string, repeat)
  repeat.times do
    puts string
  end
end

repeater('Hi all', 10) #=> Hi all \n Hi all ...

# Blocks & Yield
# This cool feature by Ruby helps developers to built highly scalable DSL's
# as well as templates for repeating content

# As you can see a default value is being set to the `email`
# argument, so you can call the method without that
def email_to(email='weare@icalialabs.com', &block)
  puts "Hi #{email}"
  yield if block_given?
  puts "It was nice talking to you, see you!"
end

email_to "kurenn@icalialabs.com" do
  puts "I want to know more about magic"
end

#=> Hi kurenn@icalialabs.com
#   I want to know more about magic
#   It was nice talking to you, see you!

email_to do
  puts "I want to know more about magic"
end

#=> Hi weare@icalialabs.com
#   I want to know more about magic
#   It was nice talking to you, see you!

email_to "kurenn@icalialabs.com"

#=> Hi weare@icalialabs.com
#   It was nice talking to you, see you!

# This method will provide an interface for the developers
# that will close the stream automatically for them
def write_to(filename="tmp.txt", &block)
  file = File.new(filename, "w")
  file.write "---\n"
  yield(file) if block_given?
  file.write "---"
  file.close
end

write_to "sample.txt" do |file|
  file.write "Hi, my name is Abraham\n"
  file.write "I'm 29 years old\n"
  file.write "And loves to do magic\n"
end

# Lambdas and functional stuff

greeting = -> (name) { "Hi my name is #{name}, nice to meet you!" }
greeting.yield("Abraham") # Hi my name is Abraham, nice to meet you!

square = -> (number) { number * number}
square.yield(10) # 100

plus = -> (a, b) { a + b }
plus.yield(5, 8) # 13

## Map
# Apply a function to a collection of elements

(1..5).map do |n|
  n * n
end

#=> [1, 4, 9, 16, 25]

(1..5).map { |n| n * n } # [1,4,9,16,25]

(1..5).map(&:square) # [1,4,9,16,25]

(1..5).map(&square) # [1,4,9,16,25]

## Reduce
# Reduce a collection of elements to one value

(1..5).reduce {|acum, number| acum + number }

(1..5).reduce &:+
