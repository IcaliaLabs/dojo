# frozen_string_literal: true

require 'csv'

load 'scraping_client.rb'

articles = ScrapingClient.articles.slice(0, 15)

CSV.open('articles.csv', 'w') do |csv|
  csv << %w[Title Rank]
  articles.each do |article|
    csv << [article.title, article.rank]
  end
end

puts ScrapingClient.web_page_dom
