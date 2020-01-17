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


# ======
# Example class for practice 2
class Country
  def initialize; end
  def self.all
  end
  def self.find(id); end
  def self.where(conditions); end
  def self.find_by(condition); end
end

Country.all # => Returns an array of Country instances
Country.find(2)# => Returns an instance of Country with id 2
# if the api doesn't provide multiple filters select only one for the condition of the following methods
Country.where(conditions) # => Returns an array of Country instances meeting the conditions
Country.find_by(condition) # => Returns an instance of Countries meeting the condition
