# frozen_string_literal: true

## Scrapping web pages
# http://ruby-doc.org/core-2.2.0/File.html

## Go to console and:
## gem install nokogiri
## Reference: http://www.rubydoc.info/github/sparklemotion/nokogiri

load 'movie.rb'
load 'report.rb'
require 'rest-client'
require 'nokogiri'

# Read the html
document = RestClient.get('http://www.rottentomatoes.com/')
# Model the DOM
dom = Nokogiri::HTML(document)

# Traverse the DOM
document = RestClient.get('http://www.rottentomatoes.com/')
dom = Nokogiri::HTML(document)

all_movies = []

dom.css('#top-box-office tr').each do |movie_tr|
  score = movie_tr.css('.media-lists__td-rating a span').text
  name = movie_tr.css('.media-lists__td-title a').text
  sales = movie_tr.css('.media-lists__td-date a').text

  all_movies << Movie.new(score, name, sales)
end

report = Report.new(all_movies)

# Movies
puts "The total of sales was: #{report.total_sales}"
puts report.average_movie_score
