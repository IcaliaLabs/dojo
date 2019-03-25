# Introduction to RSpec

RSpec is a 'Domain Specific Language' testing tool written in Ruby to test Ruby code. It is a behavior-driven development framework which is extensively used in production applications

## Installation steps

```bash
gem install rspec
```

Once the gem ins installed, you can easily add it to any project by
running the following command:

```bash
rspec --init
```

## Example RSpec Test

```ruby
require 'spec_helper'
require 'hello_world'

describe HelloWorld do
  describe "#print" do
    it "says hi to everyone" do
      expect(hellow_world.print).to eql "Hi, and Hello World!"
    end
  end
end
```

### Sources

- [The Art of Agile: TDD - James Shore](http://www.jamesshore.com/Agile-Book/test_driven_development.html)
- [TDD - Martin Fowler](http://martinfowler.com/bliki/TestDrivenDevelopment.html)
- [Better Specs](http://betterspecs.org/)
- [Code the Unit Test First - Extreme Programming](http://www.extremeprogramming.org/rules/testfirst.html)