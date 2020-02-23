# frozen_string_literal: true

require 'csv'
require 'date'
​
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
​
class Hash
  def most_used_value
    key(values.max)
  end
end
​
class Transaction
  ​
  include DateParser
  include CsvData
  ​
  attr_reader :total_sales_by_product, :payment_types, :countries, :days
  ​
  FILE_PATH = '/Documentos/dojo/backend-training/ruby-training/week_one/05/sales.csv'
  PRODUCT = 'Product'
  PRICE = 'Price'
  PAYMENT_TYPE = 'Payment_Type'
  COUNTRY = 'Country'
  TRANSACTION_DATE = 'Transaction_date'
  ​
  def initialize
    @total_sales_by_product = {}
    @payment_types = {}
    @countries = {}
    @days = {}
    @transactions = CSV.read(FILE_PATH, headers: true)
    @total_sales = 0
    read_transactions
    @total_transactions = @transactions.count
  end

  def read_transactions
    @transactions.each do |row|
      save_row(row)
    end
  end
  ​
  def save_row(row)
    @total_sales += row[PRICE].to_f
    save_and_count(@total_sales_by_product, row[PRODUCT].strip, row[PRICE].to_f)
    save_and_count(@payment_types, row[PAYMENT_TYPE])
    save_and_count(@countries, row[COUNTRY])
    save_and_count(@days, parse_to_day(row[TRANSACTION_DATE]))
  end
  ​
  def total_sales_with_prices
    { amount: @total_sales, transactions: @total_transactions }
  end
end
​
​
sales = Transaction.new
## 1. Total sales for each different product
puts sales.total_sales_by_product
​
## 2. Most used credit card handler(Mastercard, Visa)
puts sales.payment_types.most_used_value
​
## 3. Country with most transactions
puts sales.countries.most_used_value
​
## 4.Most common day that people buy
puts sales.days.most_used_value
​
## 5. Total
puts sales.total_sales_with_prices
