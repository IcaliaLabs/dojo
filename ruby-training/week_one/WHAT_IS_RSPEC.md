# What is RSpec?

RSpec is a 'Domain Specific Language' testing tool written in Ruby to test Ruby code. It is a behavior-driven development framework which is extensively used in the production applications

## Installation steps

```
% gem install rspec
```

Once the gem ins installed, you can easily add it to any project by
running the following command:

```
% rspec --init
```

## How does a test look like?


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

### Sources:

- http://www.jamesshore.com/Agile-Book/test_driven_development.html
- http://martinfowler.com/bliki/TestDrivenDevelopment.html
- http://betterspecs.org/
- http://www.extremeprogramming.org/rules/testfirst.html
