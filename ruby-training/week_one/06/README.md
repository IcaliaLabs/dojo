# 06 - Web Scraping in Ruby

## Lesson Objectives

After this training stage the trainee should be able to:

+ Use the `RestClient` service to perform a GET request and retrieve a website's markup.
+ Understand what the HTML DOM (Document Object Model) is and how to model it through the `nokogiri` gem into a ruby object based on retrieved html markup.
+ Use the `Nokogiri::HTML` module to traverse and scrape the DOM to suit their needs and extract the desired information.

## Lesson

This lesson consists of a detailed exploration of the Ruby syntax and conventions that exist for web scraping activities.

+ Introduce the concept of web scraping and the HTML DOM, as well as some of their use cases.
+ Review the `rest-client` gem and the `RestClient.get` method
+ Introduce the `nokogiri` gem and the `Nokogiri::HTML` module.
+ Explain the  `css` property of the DOM Nokogiri object and how it retuns iterable collections of html elements that match the `html tag`, `css class`, or `unique id` sent as a parameter.
+ Demonstrate how to iterate and parse said HTML element collections into text or Ruby objects that can be used and easily manipulated in the script.

The [lesson.rb](/lesson.rb) file in this directory contains commented code examples for all of these concepts.

## Practice

In order to complete this practice exercise, checkout the [practice.rb](/practice.rb) file for the exercise template.

Each trainee will practice the previously covered theory by writing a Ruby script according to the following instructions/requirements:

# Taking the code from the lesson:
# 1. Instead of having a hash representing the elements, change it to classes and objects
# 2. Get the total sales for the movies
# 3. Get the average score

# The second part for this practice is to scrap https://youtube.com and get the feature videos
# 1. Use classes to represent the video
#   1.1 Get the title, author, views_count, time_ago, url
# 2. Use a class to represent the scrapping client
# 3. Export the videos to a CSV file


## Self Study

### Codecademy Learn Ruby Course

Complete the following sections of the [Codecademy Learn Ruby course](https://www.codecademy.com/courses/learn-ruby):

## Useful Links

+ [Icalia Labs Internal Ruby Guides](https://github.com/IcaliaLabs/guides/tree/master/stack/ruby)
+ [Ruby Guides](https://www.rubyguides.com/)


