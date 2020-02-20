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
#
#The class names above are just simple examples, but you can use other ones
require 'csv'

class Report
  def self.read_file
    relative_path_to_file = 'sales.csv'

    CSV.foreach(relative_path_to_file, headers: true) do |row|
      puts row
    end
  end

  def self.total_of_sales
    sales = {}

    relative_path_to_file = 'sales.csv'

    CSV.foreach(relative_path_to_file, headers: true) do |row|
      product_name = row['Product']

      if sales.key?(product_name)
        current_value = sales[product_name]
        sales[product_name] = current_value + 1
      else
        sales[product_name] = 1
      end
    end
    sales
  end

  def self.most_used_credit
    sales = {}
    relative_path_to_file = 'sales.csv'

    CSV.foreach(relative_path_to_file, headers: true) do |row|
      payment_type = row['Payment_Type']

      if sales.key?(payment_type)
        current_value = sales[payment_type]
        sales[payment_type] = current_value + 1
      else
        sales[payment_type] = 1
      end
    end
    sales.max.first
  end

  def self.most_day_buy
    sales = {}
    relative_path_to_file = 'sales.csv'

    CSV.foreach(relative_path_to_file, headers: true) do |row|
      day = row['Transaction_date']

      if sales.key?(day)
        current_value = sales[day]
        sales[day] = current_value + 1
      else
        sales[day] = 1
      end
    end
    sales.max.first[0, 6]
  end

  def self.most_countries_transactions
    sales = {}
    relative_path_to_file = 'sales.csv'

    CSV.foreach(relative_path_to_file, headers: true) do |row|
      country = row['Country']

      if sales.key?(country)
        current_value = sales[country]
        sales[country] = current_value + 1
      else
        sales[country] = 1
      end
    end
    sales.max.first
  end

  def self.total_transaction
    total_of_rows = 0
    relative_path_to_file = 'sales.csv'

    CSV.foreach(relative_path_to_file, headers: true) do |_row|
      total_of_rows += 1
    end

    total_of_rows
  end
end

puts "Total sales for each different product:#{Report.total_of_sales}"
puts "Most used credit card handler: #{Report.most_used_credit}"
puts "Country with most transactions: #{Report.most_countries_transactions}"
puts "Most common day that people buy: #{Report.most_day_buy}"
puts "Total sales: #{Report.total_transaction}"
