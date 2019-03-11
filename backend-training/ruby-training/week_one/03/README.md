# 03 - Data and Behavior Encapsulation in Ruby

## Lesson Objectives

After this training stage the trainee should be able to: 

+ Read, understand and be able to customize or modify independent Ruby files containing one or multiple classes or modules.
+ Use existing classes and modules in their own Ruby scripts by instantiating objects or calling methods on classes or object instances.
+ Implement single inheritance between classes.
+ Include and use modules withing classes and vice-versa.
+ Understand and leverage different scopes.
+ Design, code and implement their own classes and modules to be used and reused.
+ Understand the difference between instance variables and methods, and class variables and methods.
+ Use the getter and setter generation (`attr_reader`, `attr_writer` and `attr_accessor`) methods correctly.
  

## Lesson

This lesson consists of a detailed exploration of the Ruby syntax and conventions related to data and behavior encapsulation in the Ruby language.

+ Explain and demonstrate code grouping with the `class` and `module` keywords, what they have in common and their differences.
+ Functions, variables and classes have **different scopes** depending on where they were declared and implemented. A function/variable declared on a deeper scope overrrides a more general-scoped function/variable of the same name.
+ Modules are Ruby's alternative for interfaces since a class can only inherit from 1 other class.
+ Modules can share behavior through being added to a certain class or another module with the `include` (brings functions as instance methods) or `extend` (brings functions as class methods) statements.
+ Existing classes in other files can be imported into Ruby scripts, modules or other classes with the `load` (not used), `require` and `require_relative` methods.
+ Class objects can be instantiated through their constructors. The `initialize` method, which is the constructor, receives the relevant parameters and is executed by calling `Object.new(params)`.
+ Classes are named in CamelCase and can be re-opened or completely overriden. 
+ Class methods are called on the class name (`Class.method()`).
+ Instance methods are called on class instances (`object_instance.method()`).
+ Instance variables are accessible anywhere in the class and are prefixed with an `@` symbol (`@property`).
  
The [lesson.rb](/lesson.rb) file in this directory contains commented code examples for all of these concepts.

## Practice 

In order to complete this practice exercise, checkout the [practice.rb](/practice.rb) file for the exercise template.

Each trainee will practice the previously covered theory by writing a Ruby script according to the following instructions/requirements:

1. Design and implement a project assignment shuffler that assigns developers working at Icalia Labs to different projects.
2. Every developer must be matched with two other members.
3. Every developer has more or less the same amount of projects assigned to them.
4. Build as many classes as you think you need.
5. Refactor wherever possible.
6. The code at the bottom of the [practice.rb](/practice.rb) file must run without errors.


## Self Study

### Codecademy Learn Ruby Course

Complete the following sections of the [Codecademy Learn Ruby course](https://www.codecademy.com/courses/learn-ruby):

+ **Section 9: Object-Oriented Programming, Part I**
  + Interactive Lesson 16: [Object-Oriented Programming I](https://www.codecademy.com/courses/learn-ruby/lessons/object-oriented-programming-i/exercises/why-classes)
  + Interactive Lesson 17: [Virtual Computer](https://www.codecademy.com/courses/learn-ruby/lessons/virtual-computer?action=resume_content_item)

+ **Section 10: Object-Oriented Programming, Part II**
  + Interactive Lesson 18: [Object-Oriente Programming II](https://www.codecademy.com/courses/learn-ruby/lessons/object-oriented-programming-ii/exercises/need-to-know-basis)
  + Interactive Lesson 19: [Banking on Ruby](https://www.codecademy.com/courses/learn-ruby/lessons/banking-on-ruby/exercises/what-youll-be-building-7?action=resume_content_item)

## Useful Links

+ [Ruby Classes: Ruby Doc](https://ruby-doc.org/core-2.2.0/Class.html)
+ [Ruby Modules: Ruby Doc](https://ruby-doc.org/core-2.2.0/Module.html)
+ [An Introduction to Object-Oriented Pogramming with Ruby (Highly Recommended Read)](https://medium.freecodecamp.org/an-introduction-to-object-oriented-programming-with-ruby-73531e2b8ddc)
+ [Icalia Labs Internal Ruby Guides](https://github.com/IcaliaLabs/guides/tree/master/stack/ruby)
+ [Ruby Guides](https://www.rubyguides.com/)
+ [Sorting with Ruby](http://ruby-doc.org/core-2.2.0/Array.html#method-i-sort)


