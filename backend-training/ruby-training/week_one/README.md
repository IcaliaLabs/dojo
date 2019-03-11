# Dojo Ruby Traning Plan - Week One

## Week Overview

This directory contains a full week's worth of lessons, practice exercises and relevant resources that cover **Week One**'s training syllabus. Each numbered subdirectory contains resources (files, documents and relevant links) for the respective training day (starting at 01).

## Objective

The main objective for the first week of training is for the trainee to become proficient in their use of the Ruby programming language for basic program development.

By the end of the week, the trainee should be able to complete simple and slightly more complex command line applications in native Ruby.

## Table of contents

* [00 - Setting Up](/setting-up)
* [01 - Introduction to the Ruby Language](01)
* [02 - Functions and Methods in Ruby](02)
* [03 - Data and Behavior Encapsulation in Ruby](03)
* [04 - Ruby's Libraries: Working with Gems](04)
* [05 - IO: Working with Files in Ruby](05)
* [06 - Web Scraping in Ruby](06)
* [07 - Serving Web Pages with Ruby using Rack and ERB](07)
* [08 - Your first Blog Ruby Web App](08)

## Setting Up

Before we jump into Ruby, we must first set up our environment. In order to be able to write and execute Ruby scripts and programs, we must first have an updated version of Ruby installed.

Trainees using macOS will find that Ruby is installed by default on their machines. Other OS users (for non Mac users, dual booting a Linux distro is **strongly encouraged**) must install both the Ruby language and a Ruby version manager (Icalia Labs strongly recommends you use [rbenv](https://github.com/rbenv/rbenv), which also applies to macOS users). 

Please follow any of the following installation guides before continuing:

### macOS

High Sierra and above

  1. [Install Homebrew Package Manager](https://brew.sh/)
  2. [Install Ruby using rbenv](https://jasoncharnes.com/install-ruby/)

### Linux

Debian/Ubuntu (apt package manager):
  
`$ sudo apt-get install ruby-full`

* [Installing rbenv on Ubuntu](https://makandracards.com/makandra/28149-installing-rbenv-on-ubuntu)

### Windows (please reconsider a Linux distribution)

* [Windows Ruby Installer](https://www.ruby-lang.org/en/documentation/installation/#rubyinstaller)

## Things to keep in mind about Ruby

* It is an interpreted programming language
* It is not strongly typed
* It has an interactive console through the `irb` command
* Its philosophy is to keep the developer **happy**
* Everything in Ruby is an **object**
* It always returns some object, no `void` methods
* `dot-notation` is always present



## Icalia Labs Ruby Code conventions

* Use snake case for variable and method naming
* Use camel case for naming your classes/modules
* Use `UTF-8` for file encoding
* Use `SCREAMING_SNAKE_CASE` for constants.
* The names of predicate methods (methods that return a boolean value)
  should end in a question mark.
* The names of potentially "dangerous" methods (i.e. methods that modify `self` or the
  arguments, `exit!`, etc.) should end with an exclamation mark.


If you want to know more about how we code Ruby at Icalia, check out our [guides](https://github.com/IcaliaLabs/guides/tree/master/stack/ruby).
