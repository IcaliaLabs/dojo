#This practice will break into two parts:
# 1. Parsing a remote README file from github and save it into a HTML file
#  1.1. Use the github-markup
#  1.2 Look for open-uri for reading external pages of you can use RestClient or even better HTTParty
# 2. Create class and objects for the following JSON pages: YOU MUST USE HTTPARTY
#  2.2. https://restcountries.eu/rest/v2/all Countries https://restcountries.eu/#filter-response
#  2.3. https://pokeapi.co/api/v2/pokemon Pokemons  
#  2.4. https://pokeapi.co/api/v2/location Locations https://pokeapi.co/docs/v2.html/#locations-section
#  2.5 Each class should be able to fetch records with simple methods, look for the example class, at least 3 classes should be created,
#   but you can be as creative as you want

require 'httparty'

def write_to(filename = 'tmp.html')
  file = File.new(filename, 'w')
  yield(file) if block_given?
  file.close
end

response = HTTParty.get('https://github.com/r-argentina-programa/introduccion-a-js/blob/master/README.md')

write_to 'readme.html' do |file|
  file.write(response.body)
end

# ======
# Example class for practice 2

require 'httparty'
require 'json'

class Country
  def initialize(name, capital, region)
    @name = name
    @capital = capital
    @region = region
  end

  def self.all
    response = HTTParty.get('https://restcountries.eu/rest/v2/all?fields=name;capital;region')
    response_decoded = JSON.parse(response.to_s)

    countries = []
    response_decoded.each do |country|
      countries << Country.new(country['name'], country['capital'], country['region'])
    end
    countries
  end

  def self.total_of_countries
    all.count
  end

  def self.total_speaking_english
    response = HTTParty.get('https://restcountries.eu/rest/v2/lang/en')
    countries_speaking_english = JSON.parse(response.to_s)
    countries_speaking_english.count
  end

  def self.total_speaking(language)
    response = HTTParty.get("https://restcountries.eu/rest/v2/lang/#{language}?fields=name;capital;region")
    countries_speaking = JSON.parse(response.to_s)
    countries_speaking.count
  end

  def self.find(id); end

  def self.where(conditions); end

  def self.find_by_capital(capital_name)
    response = HTTParty.get("https://restcountries.eu/rest/v2/capital/#{capital_name}?fields=name;capital;region")
    response_decoded = JSON.parse(response.to_s)
    country_obtained = response_decoded[0]

    Country.new(country_obtained['name'], country_obtained['capital'], country_obtained['region'])
  end
end

# Country.find(2) # => Returns an instance of Country with id 2
# if the api doesn't provide multiple filters select only one for the condition of the following methods
# Country.where(conditions) # => Returns an array of Country instances meeting the conditions
# Country.find_by(condition) # => Returns an instance of Countries meeting the condition

Country.all # => Returns an array of Country instances
puts "The total of countries are: #{Country.total_of_countries}"
puts "Havana is the capital of: #{Country.find_by_capital('Havana').inspect}"
puts "#{Country.total_speaking('ar')} are speaking arabe."
