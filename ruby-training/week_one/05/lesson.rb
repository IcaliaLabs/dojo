## Text Files && Strings
# http://ruby-doc.org/core-2.2.0/File.html


## Reading from a File
# Since our text file is in the same directory 
# as our lesson script, we can just use the file's
# name
relative_path_to_file = 'countries.txt'
# Parse entire file's contents into a single
# string that preserves whitespace (\t, \n, \r)
countries_content = File.read(relative_path_to_file)
puts(countries_content)

# Parse file content into an array of lines.
# Every line ends at the first new line (\n) 
# indicator encountered (the \n is part of the line)
# with the next line starting at the position immediately
# after said \n.
countries_lines = File.readlines('countries.txt')
countries_lines.each do |country|
  puts country.inspect
end


## Writing to a file
# The most direct way to write to a file is by using
# the File.open method with a block:

# This is a word array generated through a special
# Ruby literal. It is used to generate an array containing
# the words that are listed, separated by spaces instead of
# commas. For more information on these special literals:
# check out https://mikeyhogarth.wordpress.com/2011/11/24/notation-for-ruby-literals/
cities = %w{ Monterrey Guadalajara Oaxaca Torreón } # => ['Monterrey', 'Guadalajara', 'Oaxaca', 'Torreón']

new_file_path = "cities.txt"

## File.open(file_path, mode, &:block)
# The first parameter is the file path. If the file
# doesn't exist during runtime, it will be created and then
# opened in the supplied mode (second parameter).
# In this case, the mode is "write-only" or "w", meaning
# that the file will be overwritten when opened if it exists
# Check https://ruby-doc.org/core-2.6.1/IO.html#method-c-new
# for more information on Open Modes.
File.open("cities.txt", "w") do |file|
  cities.each do |city|
    file.write("#{city}\n")
  end
end

# The file is automatically closed when the block ends.

# You can also instantiate the file directly with the .open() method and
# then open, write and close it manually afterwards.
new_file = File.open(new_file_path, "w")
cities.each do |city|
  new_file.write("#{city}\n")
end
new_file.close()

## Reading a CSV file
# http://ruby-doc.org/stdlib-1.9.2/libdoc/csv/rdoc/CSV.html
require 'csv'

# Comma-separated value files are, as the name implies,
# a text file composed of lines of text made up of comma-separated
# elements. The position of each element in the line matters
# because it corresponds to a particular column in a table.
# In order to identify the attribute that the value corresponds to,
# the CSV gem allows us to set the "headers: true" option in
# an options hash, which tells CSV to treat the first row in the
# file as a list of "tags" or headers, instead of another row of values.
CSV.foreach('sales.csv', headers: true) do |row|
# Remember, if a hash is the last parameter in a method, such as in 
# this case, the hash doens't need to have the curly braces and
# you can list the "key: value" pairs as extra parameters.
  puts row["Product"]
end

