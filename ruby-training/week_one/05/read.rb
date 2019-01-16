## Files && Strings
# http://ruby-doc.org/core-2.2.0/File.html

# Read a file
puts File.read('countries.txt')

# Process a file lines
File.readlines('countries.txt').each do |country|
  puts country
end

# Read a csv file
# http://ruby-doc.org/stdlib-1.9.2/libdoc/csv/rdoc/CSV.html
require 'csv'

CSV.foreach('sales.csv', headers: true) do |row|
  puts row["Product"]
end
