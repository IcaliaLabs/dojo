# 05 - IO: Working with Files in Ruby
## Lesson Objectives

After this training stage the trainee should be able to: 

+ Understand the utility in using files (text and csv particularly) to store, access and manipulate data for simple solutions that don't require complex database systems.
+ Understand that computer all files are essentially text files, while proprietary extensions usually involve some form of encoding.
+ Load text files from the file system into a Ruby script through Ruby's `File ` module.
+ Read the contents from the loaded text file and use them in the script
+ Modify, extend, write and add content to the loaded file in an automatic way through a Ruby script.
+  Handle input and output that deals with Comma-Separated Value files, particularly with the [csv](https://github.com/ruby/csv) Ruby gem.
  

## Lesson

This lesson consists of a detailed exploration of the Ruby syntax and conventions for reading from (input) and writing (output) to files.

+ Introduce the [`File` Ruby module](http://ruby-doc.org/core-2.2.0/File.html)
+ Explain the parameters and return value of the `File.read()` method, specially the importance of file location and relative paths.
+ Explain that files can be parsed entirely into a single string or on a line by line iterated basis (`File.read()` v.s. `File.readlines()`)
+ Explain the `File.open(path, mode)` method with and without a block.
+ Detail on the mode attribute for File.open() (check [IO Open Mode](https://ruby-doc.org/core-2.2.0/IO.html#method-c-new) for details on the possible values)
+ Explain the CSV format, how to read and write to it with the CSV gem.


The [lesson.rb](/lesson.rb) file in this directory contains commented code examples for all of these concepts.

## Practice 

In order to complete this practice exercise, checkout the [practice.rb](/practice.rb) file for the exercise template.

Each trainee will practice the previously covered theory by writing a Ruby script according to the following instructions/requirements:


## Self Study

### Codecademy Learn Ruby Course

Complete the following sections of the [Codecademy Learn Ruby course](https://www.codecademy.com/courses/learn-ruby):

## Useful Links

+ [Icalia Labs Internal Ruby Guides](https://github.com/IcaliaLabs/guides/tree/master/stack/ruby)
+ [Ruby Guides](https://www.rubyguides.com/)


