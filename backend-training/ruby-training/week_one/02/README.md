# 02 - Functions and Methods in Ruby

## Lesson Objectives

After this training stage the trainee should be able to:

+ Declare and write functions/methods in a global scope to carry out simple operations
+ Design function signatures with conventionally acceptable method names and a reasonable amount and selection of function parameters.
+ Call and execute functions/methods of their own design in global scope scripts to solve more complex problems/exercises
+ Apply conventional method naming and calling practices in special circumstances (Predicate `?` and Mutator `!` methods, when to use parentheses, the "hash as last parameter" rule, etc...)
+ Recognize and write methods with Blocks, Procs and Lambdas in Ruby
  
## Lesson

This lesson consists of a detailed exploration of the Ruby syntax and conventions of method and function writing in a global scope (without getting into code grouping or instance/class method distinction).

+ Introduce method blocks and their scope with the `def` and `end` keywords
+ The `return` keyword and implicit returns
+ No return or parameter types
+ Default attribute values (optional parameters)
+ Optional parentheses
+ Method calls
+ Blocks, Procs and Lambdas
+ Functional programming methods in Ruby (`.map()`, `.reduce()`, etc.)
+ Higher order functions

The [lesson.rb](lesson.rb) file in this directory contains commented code examples for all of these concepts.

## Practice

In order to complete this practice exercise, checkout the [practice.rb](practice.rb) file for the exercise template.

Each trainee will practice the previously covered theory by writing a Ruby script according to the following instructions/requirements:

In this exercise, you will write a script to set up core reviews for all reviewees.

The rules for the script are:

1. Two **random** reviewers per reviewee
2. When the reviewers are selected, send an e-mail to the reviewee informing them of the selection (print the e-mail contents to the console)
3. After the email is sent, create a txt file format of the email for each reviewee, with the following format:

   ```text
   E-mail to: kurenn@icalialabs.com
   Body:

   Hi, Abraham Kuri.
   Your reviewers are Héctor and Vov.
   ```

4. Constant global arrays for `REVIEWERS` and `REVIEWEES` have already been provided in the `practice.rb` code template. Please use these as the 'database' your script.

## Self Study

### Codecademy Learn Ruby Course

Complete the following sections of the [Codecademy Learn Ruby course](https://www.codecademy.com/courses/learn-ruby):

+ **Section 5: Blocks and Sorting**
  + Interactive Lesson 9: [Methods, Blocks & Sorting](https://www.codecademy.com/courses/learn-ruby/lessons/methods-blocks-sorting/exercises/why-methods)
  + Interactive Lesson 10: [Ordering your Library](https://www.codecademy.com/courses/learn-ruby/lessons/ordering-your-library/exercises/what-youll-be-building-4)
+ **Section 6: Hashes and Symbols**
  + Interactive Lesson 11: [Hashes and Symbols](https://www.codecademy.com/courses/learn-ruby/lessons/hashes-and-symbols/exercises/the-story-so-far)
  + Interactive Lesson 12: [A Night at the Movies](https://www.codecademy.com/courses/learn-ruby/lessons/a-night-at-the-movies/exercises/what-youll-be-building-5)
+ **Section 7: Refactoring**
  + Interactive Lesson 13: [The Zen of Ruby](https://www.codecademy.com/courses/learn-ruby/lessons/the-zen-of-ruby?action=resume_content_item)
  + Interactive Lesson 14: [The Refactor Factory](https://www.codecademy.com/courses/learn-ruby/lessons/the-refactor-factory/exercises/what-youll-be-fixing)
+ **Section 8: Blocks, Procs and Lambdas**
  + Interactive Lesson 15: [Blocks, Procs and Lambdas](https://www.codecademy.com/courses/learn-ruby/lessons/blocks-procs-and-lambdas)

## Useful Links

+ [Ruby Methods: W3Resource](https://www.w3resource.com/ruby/ruby-methods.php)
+ [Closures in Ruby: Blocks, Procs and Lambdas (Highly Recommended Read)](https://blog.appsignal.com/2018/09/04/ruby-magic-closures-in-ruby-blocks-procs-and-lambdas.html)
+ [Icalia Labs Internal Ruby Guides](https://github.com/IcaliaLabs/guides/tree/master/stack/ruby)
+ [Ruby Guides](https://www.rubyguides.com/)