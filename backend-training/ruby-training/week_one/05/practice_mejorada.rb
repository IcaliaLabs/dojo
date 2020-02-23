# frozen_string_literal: true

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

module DateParser
  def parse_to_day(date)
    DateTime.strptime(date, '%m/%e/%y %H:%M').strftime('%A')
  end
end
​
module CsvData
  def save_and_count(hash, column, value = 1)
    hash[column] || hash[column] = 0 # nil || hash[column] = 0
    hash[column] += value
  end
end

class Hash
  def most_used_value
    key(values.max)
  end
end

class Report
  include DateParser
  include CsvData

  FILE_PATH = '/Documentos/dojo/backend-training/ruby-training/week_one/05/sales.csv'
  PRODUCT = 'Product'
  PRICE = 'Price'
  PAYMENT_TYPE = 'Payment_Type'
  COUNTRY = 'Country'
  TRANSACTION_DATE = 'Transaction_date'

  def initialize
    @sales = {}
    @most_used_credit = {}
    @most_day_buy = {}
    @most_countries_transactions = {}
    @read_file = CSV.foreach(FILE_PATH, headers: true)
    @total_sales = 0
    read_file
  end

  def read_file
    @read_file.each do |row|
      saved_row(row)
    end
  end

  def save_row(row)
    @total_sales += row[PRICE].to_f
    save_and_count(@sales, row[PRODUCT].strip, row[PRICE].to_f)
    save_and_count(@most_used_credit, row[PAYMENT_TYPE])
    save_and_count(@most_countries_transactions, row[COUNTRY])
    save_and_count(@most_day_buy, parse_to_day(row[TRANSACTION_DATE]))
  end
end

sales_report = Report.new
puts sales_report

# puts "Total sales for each different product:#{sales_report.sales}"
# puts "Most used credit card handler: #{sales_report.most_used_credit}"
# puts "Country with most transactions: #{sales_report.most_countries_transactions}"
# puts "Most common day that people buy: #{sales_report.most_day_buy}"
# puts "Total sales: #{sales_report.total_transaction}"
