# frozen_string_literal: true

# 1.Count how many times the letter a is repeated in the countries in the world

# Your code starts here
relative_path_to_file = 'countries.txt'
countries_content = File.read(relative_path_to_file)
puts countries_content.count 'a'

# Your code ends here

# 2. To work on the CSV file create classes to get:
#   1. Total sales for each different product
#   2. Most used credit card handler(Mastercard, Visa)
#   3. Country with most transactions
#   4. Most common day that people buy
#   5. Total sales
#
# Some class that you may or not need are:
# Transaction
# Product
# PaymentType

# The class names above are just simple examples, but you can use other ones
require 'csv'
require 'date'

module CsvParser
  FILENAME = 'sales.csv'

  def hash_by_column(column_name)
    hash_result = {}

    CSV.foreach(FILENAME, headers: true) do |row|
      hash_key = row[column_name]
      value = hash_result[hash_key] || 0

      hash_result[hash_key] || hash_result[hash_key] = 0
      hash_result[hash_key] = value + 1
    end

    hash_result
  end

  def max_value(content)
    content.max.first
  end
end

module DateParser
  def parse_to_day(date)
    DateTime.strptime(date, '%m/%e/%y %H:%M').strftime('%A')
  end
end

class Hash
  def to_text
    text = []
    each do |key, value|
      text << "#{key} with #{value}"
    end
    text.join(', ')
  end
end

class Report
  include CsvParser
  include DateParser

  def total_of_sales
    file_content = hash_by_column('Product')
    file_content.to_text
  end

  def most_used_credit
    file_content = hash_by_column('Payment_Type')
    max_value(file_content)
  end

  def country_with_most_transactions
    file_content = hash_by_column('Country')
    max_value(file_content)
  end

  def day_with_most_sales
    file_content = hash_by_column('Transaction_date')
    date = max_value(file_content)
    parse_to_day(date)
  end

  def total_transactions
    file_content = hash_by_column('Products')
    file_content.values.first
  end
end

report = Report.new

puts "Total sales for each different product: #{report.total_of_sales}"
puts "Most used credit card handler: #{report.most_used_credit}"
puts "Country with most transactions: #{report.country_with_most_transactions}"
puts "Most common day that people buy: #{report.day_with_most_sales}"
puts "Total sales: #{report.total_transactions}"
