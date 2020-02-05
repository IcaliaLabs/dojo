# 08 - Web Server with Rack

## Lesson Objectives

After this training stage the trainee should be able to:

+ Use the `Rack` gem to display data on a web browser 
+ Understand how to load data from classes which may load information from other external services, such as Github.
+ Get a glimps on how to embed ruby code into html template files, to dynamically build web pages. 

## Lesson

This lesson consists of a detailed exploration of the Ruby syntax and conventions that exist to build a super simple web server using [Rack](https://github.com/rack/rack).

+ Introduce the concept of a web server using rack and ruby
+ Handle views through [ERB](https://ruby-doc.org/stdlib-2.6.5/libdoc/erb/rdoc/ERB.html) templates
+ Creation of classes that map to a dataset

The [practice/server.rb](practice/server.rb) file in this directory contains commented code for you to get started, as well as some simple instructions.

## Practice

In order to complete this practice exercise, you can refer to the [last exercise](../07) to refresh how to create a simple rack server.

The following gems are used in these practice exercises:

+ [csv](https://github.com/ruby/csv)
+ [rack](https://github.com/rack/rack)

Each trainee will practice the previously covered theory by writing a Ruby script according to the following instructions/requirements:

* Usage of classes to describe each Icalier
* Seed some data in order to display the information correctly
* See the output on a web page running with Rack

## Self Study

+ [Rack - The Weekly Iteration](https://thoughtbot.com/upcase/videos/rack)
+ [https://gist.github.com/markbates/4240848](https://gist.github.com/markbates/4240848)
+ [Rack middleware](https://www.rubyguides.com/2018/09/rack-middleware/)


## Useful Links

+ [RubyDoc - CSV Module](http://ruby-doc.org/stdlib-1.9.2/libdoc/csv/rdoc/CSV.html)
+ [Icalia Labs Internal Ruby Guides](https://github.com/IcaliaLabs/guides/tree/master/stack/ruby)
+ [Ruby Guides](https://www.rubyguides.com/)
