# 04 - Ruby's Libraries: Working with Gems
## Lesson Objectives

After this training stage the trainee should be able to: 

+ Understand the need for using pre-existing code libraries (gems), as well as their usefulness.
+ Find, and evaluate third-party gems through the ruby-gems service.
+ Install gems directly into a directory or a host computer.
+ Require locally installed gems into a Ruby script.
+ Install and require gems into a Ruby script through a Gemfile.
+ Use existing third-pary code from gems in their own scripts.
+ Generate a `Gemfile` from scratch in order to organize, list and install dependencies in a project.
  

## Lesson

This lesson consists of a detailed exploration of the process and practice of utilizing third-party code (or pre-existing libraries/gems) in custom Ruby scripts and projects.

+ Introduce the existance, purpose and use of the [RubyGems](https://rubygems.org/) gem repository and package manager (like npm for Ruby).
+ Introduce RubyGems' `gem install` command (comes with Ruby by default) and explain how to install gems locally and globally with it.
+ Introduce some of the main gems used at Icalia Labs (i.e. Devise, Puma, RSpec, Pry, PG) through a brief explanation of what each is for.
+ Showcase the `github-markup` gem, as well as it's dependence on other third-party services (`redcarpet` gem), by running through a markdown parsing exercise.
+ Introduce the `Gemfile` together with the `bundler` gem and the `bundle install` command in order to prepare for the second exercise (replace all existing and future requires and installations for this lesson with Gemfile)
+ Introduce the HTTP and REST API service architecture superficially (talk about `get`, `post` methods as well as `JSON`)
+ Showcase the `rest-client` gem by running through an exercise involving the SEPOMEX v1 API.
+ Introduce debugging with `pry` by using it to inspect API responses throughout SEPOMEX API exercise.
  
+ Gems that are used in this lesson:

  + [github-markup](https://github.com/github/markup)
  + [redcarpet](https://github.com/vmg/redcarpet)
  + [rest-client](https://github.com/rest-client/rest-client)
  + [json](https://github.com/flori/json)
  + [pry](https://github.com/pry/pry)
  
The [lesson.rb](/lesson.rb) file, together with the [Gemfile](/Gemfile) in this directory contain commented code examples for all of these concepts.

## Practice 

In order to complete this practice exercise, checkout the [practice.rb](/practice.rb) file for the exercise template. This practice is a two-part exercise.

The following gems are used in these practice exercises:

+ [github-markup](https://github.com/github/markup)
+ [rest-client](https://github.com/rest-client/rest-client) 
+ [httparty](https://github.com/jnunemaker/httparty)
+ [json](https://github.com/flori/json)

Each trainee will practice the previously covered theory by writing a Ruby script according to the following instructions/requirements:

#### Exercise 01
   Parsing a remote README file from a public GitHub repository and saving it as an HTML file.

   1. Locate a public GitHub repository of your choosing that contains a simple but complete README file (alternatively, you can use the [dojo's README]([https://github.com/IcaliaLabs/dojo/README.md](https://github.com/IcaliaLabs/dojo/blob/master/README.md))).
   2. Use the `github-markup` gem to parse the contentas of said README (tip: you need the **raw** version of the markdown text) and output it to an HTML file with the same name (README.html).
   3. In order to fetch the README remotely (without manually downloading the file), you may use Ruby's [OpenURI](https://ruby-doc.org/stdlib-2.3.1/libdoc/open-uri/rdoc/OpenURI.html) module, the [rest-client](https://github.com/rest-client/rest-client) gem, or even better, the [HTTParty]([https://](https://github.com/jnunemaker/httparty)) gem.

   #### Exercise 02
Create Ruby classes to represent and contain the data served in each of the following JSON API endpoints:

 + `http://sepomex.icalialabs.com/api/v1/zip_codes/`
 + `http://sepomex.icalialabs.com/api/v1/states/`
 + `http://sepomex.icalialabs.com/api/v1/cities/`

*Tip: The `/endpoint/` (last part of the URI) should give you a clue as to how to name each class or what each set of attributes represents.*

1. Each class should be able to fetch records with simple methods.
   
   *Use the example class' method signatures in the `practice.rb` file for a clue to what methods to include and what each should do.*
2. You must have at least three classes, including the example class (which you must fill out).
3. You **must** use `HTTParty`.



## Self Study

### RubyGems Guides

Read through the following sections of the [RubyGems Guides](https://www.rubygems.org):
+ **Section 01:** [RubyGem Basics](https://guides.rubygems.org/rubygems-basics/)
+ **Section 02:** [What is a Gem?](https://guides.rubygems.org/what-is-a-gem/)

### When to use Gems and how to Choose Them:

Read Elle Meredith's post on [Thoughtbot's blog](https://thoughtbot.com/blog) on when to use Ruby Gems and how to choose which Gem to use.

+ Blog Post: [To gem, or not to gem](https://thoughtbot.com/blog/to-gem-or-not-to-gem)

### RubyGuides

Read RubyGuide's [Ultimate Guide to Ruby Gems, Gemfiles & Bundler](https://www.rubyguides.com/2018/09/ruby-gems-gemfiles-bundler/). You can skip the *'How to Build a Ruby Gem' section, but ***it is highly recommended*** that you follow that section to better understand what makes up a Ruby Gem.*

## Useful Links
+ [Ruby-Lang Libraries](https://www.ruby-lang.org/en/libraries/)
+ [RubyGems Package Manager](https://www.rubygems.org)
+ [Icalia Labs Internal Ruby Guides](https://github.com/IcaliaLabs/guides/tree/master/stack/ruby)
+ [Ruby Guides](https://www.rubyguides.com/)


