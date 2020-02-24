# frozen_string_literal: true

# Exercise 02
# Please don't write any of the code for this exercise in this file, use a separate script to run the main program
# and separate files for the classes.
# The second part for this practice is to scrape https://news.ycombinator.com
# 1. Use a class to represent the scraping client (you may call it Scraper or ScrapingClient for simplicity). Ideally this class should not be instantiated (figure out what that means in terms of the method types and how you should call them).
# 2. Use a class to represent the independent article or story, storing only the information YOU would like to keep from what is shown on the front page ONLY.
# 3. Use any other classes you think may be useful to represent some of the more complex dependencies that will be aggregated to the article or story class above (in other words, the compound attributes of the article/story class).
# 4. Write a script (`hacker_news_scraper.rb`) that uses the Scraper to read HTML from [Hacker News](https://news.ycombinator.com) and parse it into instances of your custom class and then reports the top 15 stories into a CSV file (with headings).e

load 'article.rb'
require 'rest-client'
require 'nokogiri'
require 'csv'

class ScrapingClient
  MAIN_URL = 'https://news.ycombinator.com/'

  def self.read_web_page
    RestClient.get(MAIN_URL)
  end

  def self.web_page_dom
    Nokogiri::HTML(read_web_page)
  end

  def self.articles
    all_articles = []

    web_page_dom.css('table.itemlist tr.athing').each do |article|
      rank = article.css('.title .rank').text
      title = article.css('.title a.storylink').text

      all_articles << Article.new(rank, title)
    end

    all_articles
  end
  
end
