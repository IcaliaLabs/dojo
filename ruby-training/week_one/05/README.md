# 05 - IO: Working with Files in Ruby

## Lesson Objectives

After this training stage the trainee should be able to: 

+ Understand the utility in using files (text and csv particularly) to store, access and manipulate data for simple solutions that don't require complex database systems.
+ Understand that computer all files are essentially text files, while proprietary extensions usually involve some form of encoding.
+ Load text files from the file system into a Ruby script through Ruby's `File ` module.
+ Read the contents from the loaded text file and use them in the script
+ Modify, extend, write and add content to the loaded file in an automatic way through a Ruby script.
+ Handle input and output that deals with Comma-Separated Value files, particularly with the [csv](https://github.com/ruby/csv) Ruby gem.
  
## Lesson

This lesson consists of a detailed exploration of the Ruby syntax and conventions for reading from (input) and writing (output) to files.

+ Introduce the [`File` Ruby module](http://ruby-doc.org/core-2.2.0/File.html)
+ Explain the parameters and return value of the `File.read()` method, specially the importance of file location and relative paths.
+ Explain that files can be parsed entirely into a single string or on a line by line iterated basis (`File.read()` v.s. `File.readlines()`)
+ Explain the `File.open(path, mode)` method with and without a block.
+ Detail on the mode attribute for File.open() (check [IO Open Mode](https://ruby-doc.org/core-2.2.0/IO.html#method-c-new) for details on the possible values)
+ Explain the CSV format, as well as how to read from CSV files with the CSV gem.

The [lesson.rb](/lesson.rb) file in this directory contains commented code examples for all of these concepts.

## Practice

In order to complete this practice exercise, checkout the [practice.rb](/practice.rb) file for the exercise template. This practice is a two-part exercise.

The following gems are used in these practice exercises:

+ [csv](https://github.com/ruby/csv)

Each trainee will practice the previously covered theory by writing a Ruby script according to the following instructions/requirements:

### Exercise One

Count how many times the letter a is repeated in the countries in the world

1. Use the `File` Ruby module to read from the [countries.txt](countries.txt) file.
2. Write a Ruby script that somehow counts and reports the number of letters 'a' (case-insensitive) that appear in the names of all the countries in the file. Write the script while keeping in mind everything you've learned about making your code clean, readable and effective.

### Exercise Two

Based on the [sales.csv](sales.csv) file, create the necessary Ruby classes and their respective methods to get the following information:

1. Total sales for each different product
2. Most used credit card handler(Mastercard, Visa)
3. Country with most transactions
4. Most common day that people buy
5. Total sales

Each class must use the CSV module/gem to parse the raw CSV content into a native Ruby format. Choose a format (data structure or data type) that is useful to perform the necessary processing and calculations in order to produce the reportes mentioned above.

 **Some classes that you may or not need are:**

+ `Transaction`
+ `Product`
+ `PaymentType`

 The class names above are just simple examples, but you can create any classes you think you may need and you can call them whatever you think appropriate.

## Self Study

+ [Viking Code School - Working with Files in Ruyb](https://www.vikingcodeschool.com/professional-development-with-ruby/working-with-files-in-ruby)
+ [Philip Brown - Working with CSV Files](https://www.culttt.com/2016/04/20/working-csvs-ruby/)

## Useful Links

+ [RubyDoc - IO::File Module](http://ruby-doc.org/core-2.2.0/File.html)
+ [RubyDoc - IO Open Modes](https://ruby-doc.org/core-2.6.1/IO.html#method-c-ne)
+ [String Literals Review](https://mikeyhogarth.wordpress.com/2011/11/24/notation-for-ruby-literals)
+ [RubyDoc - CSV Module](http://ruby-doc.org/stdlib-1.9.2/libdoc/csv/rdoc/CSV.html)
+ [Icalia Labs Internal Ruby Guides](https://github.com/IcaliaLabs/guides/tree/master/stack/ruby)
+ [Ruby Guides](https://www.rubyguides.com/)