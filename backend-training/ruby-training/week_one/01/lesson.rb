# Ruby Icalia Labs Training
# Docs:
# https://ruby-doc.org/core-2.4.1/
#

# Declaring variables in Ruby
# Highlights:
 # - There are no types
 # - You can reassign them to anything you want at anytime

# Integer example
icalia_members_count = 40

# Float example
total_amount = 104.26

# String example
my_name = "Abraham Kuri" # Prefer double quotes

# Or with simple quotes
my_name = 'Abraham Kuri'

# Concatenating strings
 # There are two(maybe more) ways in Ruby to concatenate strings:
my_full_name = "Abraham " + "Kuri"
my_full_name = 'Abraham ' + 'Kuri'

 # By interpolation
my_full_name = "#{my_name} Kuri"
my_full_name = '#{my_name} Kuri' # This will return '#{my_name} Kuri', as the interpolation does not work with simple quotes

# Symbol example
my_inmmutable_name = :abraham

# Arrays
# Highlights:
 # - It is a collection of elements of any type
 # - It's size is dynamic
card_names = ["Spades", "Hearths", "Clubs", "Diamonds"]
card_values = [1,2,3,4,5,6,7,8,9,10,11,12,13]
my_favorite_card = [4, "Clubs"]

## Accesing array elements
card_names[0] # This will return "Spades"
card_values[3] # This will return 4

## Setting an array value
card_names[0] = "Coins" # This will set the value on index 0 to Coins, so Spades is going to be substituted

## Pushing elements to an array
card_names << "Arrows" # This will add an element at the end of the array with the value of "Arrow"
card_names.push("Arrows")

## Get size of the array
card_names.size # Will return the actual size of the collection
card_names.length # Will return the actual size of the collection

## Merge two or more arrays
[1,2,3,4] + [5,6,7,8] # Will return [1,2,3,4,5,6,7,8]

## Loop or iterate through arrays
# for loop (not so common)
for card_name in card_names do
  puts card_name # `puts` print to the console
end

# each iterator (very common)
card_names.each do |card_name|
  puts card_name # `puts` print to the console
end

# Hashes or Dictionaries
 # - It is a collection of elements based on key value
 # - If you are familiar with JSON, if follows the same syntax
 # - You can have any value as the key, and anything as the value
developer = {
  name: "Abraham",
  age: 29,
  job_title: "CTO",
  "description" => "A human being",
  "name" => "kurenn"
}

## Accesing hash elements
 # You access the elements of a hash the same as an array, but instead the index
 # you use the key
developer[:name] # This will return "Abraham"

## Updating a hash element
 # Update the developer name to something else:
developer[:name] = "Walter"

## Adding elements to a hash
# You can just declare dynamic new keys, and they will automatically be added into the hash
developer[:github_url] = "https://github.com/kurenn"

## Get size of a hash
developer.size # This will return 4 in this case due to the new added key
developer.length

## Merging two hashes
new_developer_info = {
  name: "Abraham Kuri",
  country: "MX"
}

developer.merge(new_developer_info)
# The line above will return as hash like:
# {
#   name: "Abraham Kuri",
#   age: 29,
#   job_title: "CTO",
#   country: "MX"
# }

# Get hash keys
develper.keys # This will return an array of the key names => [:name, :age, :job_title, :country]
develper.values # This will return an array of the values => ["Abraham Kuri", 29, "CTO", "MX"]

# Ranges
# http://ruby-doc.org/core-2.4.0/Range.html
numbers = (1..20)
numbers.min # 3
numbers.max # 20
numbers.to_a # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

letters = ("a".."f")
letters.to_a # ["a", "b", "c", "d", "e", "f"]

# Iterate through ranges
(1..100).each do |number|
  puts number if number % 2 == 0
end

