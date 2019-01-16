#This practice will break into two parts:
# 1. Parsing a remote README file from github and save it into a HTML file
#  1.1. Use the github-markup
#  1.2 Look for open-uri for reading external pages of you can use RestClient or even better HTTParty
# 2. Create class and objects for the following JSON pages: YOU MUST USE HTTPARTY
#  2.2. http://sepomex.icalialabs.com/api/v1/zip_codes/
#  2.3. http://sepomex.icalialabs.com/api/v1/states/
#  2.4. http://sepomex.icalialabs.com/api/v1/cities/
#  2.5 Each class should be able to fetch records with simple methods, look for the example class, at least 3 classes should be created,
#      but you can be as creative as you want

# ======
# Example class for practice 2
class ZipCode
  def initialize; end
  def self.all; end
  def self.find(id); end
  def self.where(conditions); end
  def self.find_by(condition); end
end

ZipCode.all # => Returns an array of ZipCode instances
ZipCode.find(2)# => Returns an instance of ZipCode with id 2
ZipCode.where(conditions) # => Returns an array of ZipCode instances meeting the conditions
ZipCode.find_by(condition) # => Returns an instance of ZipCode meeting the condition
