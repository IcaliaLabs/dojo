# Dojo Ruby Training Plan: Day One

## Lesson Objectives

After this training stage the trainee should be able to: 
+ Correctly utilize the basic syntax and semantics of the Ruby language
+ Understand the meaning of the phrase **"Everything in Ruby is an Object"**
+ Execute simple Ruby scripts in their own operating system's command line
+ Write basic Ruby code following both the Ruby language's and Icalia Labs' internal style and conventions
  

## Lesson
 Extensive introduction into the basic syntactical, semantical and morphological aspects of the language.

+ Explain and demo IRB
+ Variable Declaration/Assignment/Inspection
+ Everything in Ruby is an Object
+ Loose typed
+ Arithmetic operators
+ Strings and string interpolation
+ Arrays, Hashes
+ Basic methods (size, length, etc..)
+ Basic use of conditionals and flow control
+ Iterators (for..in, each)
+ Ranges
+ Hello, world!

## Practice 

Each trainee will practice the previously covered theory by writing a Ruby script according to the following instructions/requirements. Each step represents a different "step" in the script:

1. [Prompt the user]( http://ruby-doc.org/docs/ruby-doc-bundle/Tutorial/part_02/user_input.html) for the name and age of each of the developers in the room / intern pod. Strip trailing chars of input, look for the appropriate function [here](http://ruby-doc.org/core-2.4.1/String.html).

2. Store each developer in an array of hashes ***(age must be an integer)*** , e.g:
	``` 
	developers = [{ name: "Walter", age: 25 }, { name: "Abraham", age: 29 }]
	```

3. Add a skills array to each developer in the hash.
4. Add a friends key to each developer for which the value is a hash describing each friend (only store their name).
5. Print the developer profile matching the following format:
```
Abraham Kuri is a 29 year old developer with 3 friends and is able to cook, do magic, ride a bike.
```

## Self Study

### Codecademy Learn Ruby Course

Complete the following sections of the [Codecademy Learn Ruby course](https://www.codecademy.com/courses/learn-ruby):

+ **Section 1:**
	+ Interactive Lesson 1: [Introduction to Ruby](https://www.codecademy.com/courses/learn-ruby/lessons/introduction-to-ruby/exercises/overview--sneak-peek)
	+ Interactive Lesson 2: [Putting the Form in the Formatter](https://www.codecademy.com/courses/learn-ruby/lessons/putting-the-form-in-formatter/exercises/what-youll-be-building?)

## Useful Links

+ [Official Ruby Language Doumentation](https://ruby-doc.org/core-2.6/)
+ [Codecademy Ruby Course](https://www.codecademy.com/courses/learn-ruby)
+ [TryRuby: Learn programming with Ruby](https://ruby.github.io/TryRuby/)
+ [Icalia Labs Internal Ruby Guides](https://github.com/IcaliaLabs/guides/tree/master/stack/ruby)
+ [Ruby Guides](https://www.rubyguides.com/)


