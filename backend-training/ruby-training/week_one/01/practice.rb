# Write a script that asks the name and age for each of the developers on the room (name, age)
# 1. Store them in an array of hashes named developers e.g. [{name: "Walter", age: 25}, {name: "Abraham", age: 29}]
# http://ruby-doc.org/docs/ruby-doc-bundle/Tutorial/part_02/user_input.html
# 2. Store the age in the hash as an integer
# 3. Add a skills array to each developer on the room
# 4. Add a friends key to each developer with a hash describing each friend (name)
# 5. Strip trailing chars of input, look for the appropriate function here
# 6. Print the developer profile matching the following format:
#  Abraham Kuri is a developer of 29 years old with 3 friends and is able to cook, do magic, ride a bike

# Your script starts here
developer = {}

puts "What is your name?"
developer[:name] = gets.chomp

puts "How old are you?"
developer[:age] = gets.chomp.to_i

puts "Tell me the names of all your friends"
developer[:friends] = gets.chomp.split(',')

puts "Write your skills separated by comma"
developer[:skills] = gets.chomp.split(',')

puts "#{developer[:name]} is a developer of #{developer[:age]} years old with #{developer[:friends].size} friends and is able to #{developer[:skills].join(", ")}"

# Your script ends here

puts developer.inspect