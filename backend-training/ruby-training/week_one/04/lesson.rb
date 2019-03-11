# Ruby Icalia Labs Training
# Docs:
# https://ruby-doc.org/core-2.4.1/
#

# Working with gems
# Gems: Are the name of the libraries distributed with ruby
#
# Some of the most common ones used by Icalia are:
# Devise - User handling
# Carrierware - Files upload
# Puma - Concurrent Web Server
# PG - Postgresql adapter
# ActiveModelSerializers - JSON API serializers
# Kaminari - Pagination
# MiniMagick - Image processing
# Pry - debugging
# Rspec - Testing

# gem install github-markup
# gem install redcarpet
require 'github/markup'
puts GitHub::Markup.render('README.md', File.read('../README.md'))

## Another beautiful example
## RestClient: Make Web Requests beautifully
## Go to console and do:
## gem install rest-client
## gem install json
## Reference: https://github.com/rest-client/rest-client
require 'rest-client'

### Getting WebSites
RestClient.get 'http://www.google.com'

## Getting Resources
raw_zip_codes = RestClient.get 'http://sepomex.icalialabs.com/api/v1/zip_codes'

## Using those resources
require 'json'
zip_codes = JSON.parse(raw_zip_codes)["zip_codes"]
zip_codes.each { |zip_code| puts zip_code["d_codigo"] }
