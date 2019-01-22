# Puppy

You're going to build a puppy and then adopt it! Wait, how do puppies work again?

# Usage

Edit `lib/puppy.rb` to build your Puppy's functionality. We've given you the basic structure of your new Puppy.

Then run `rspec` in this directory to see if your Puppy meets the spec.

The spec below is encoded into an RSpec test suite in `spec/puppy_spec.rb`.

# Spec

**Puppies are stateful**

Your Puppy is a class. You instantiate a Puppy like this:

```rb
my_puppy = Puppy.new
```

Your Puppy has a state. You can set your Puppy's new state by calling `@state = :new_state` in your class. You can check your Puppy's state by checking `@state` in your class.

**Puppies are calm**

When you get a new puppy, they're calm at first.

```rb
my_puppy = Puppy.new
my_puppy.state  # :calm
```

**Puppies can speak**

Your Puppy has a `#speak` method. It makes different noises depending on how it feels. Most of the time, your Puppy is happy to bark.

```rb
my_puppy.speak  # "Bark!"
```

**Puppies like when you pet them**

Your Puppy has a `#pet` method. Petting your puppy once makes them wag their tails. Petting your puppy again makes them excited!

```rb
my_puppy = Puppy.new
my_puppy.pet
my_puppy.state  # :wagging
my_puppy.pet
my_puppy.state  # :excited
```

**Puppies don't like when you spray them with water**

Your Puppy has a `#spray` method. Your Puppy will start growling if you spray them with water. If you spray them again, they will get angry.

```rb
my_puppy = Puppy.new
my_puppy.spray
my_puppy.state  # :growling
my_puppy.speak  # "Grrrr."
my_puppy.spray
my_puppy.state  # :angry
my_puppy.speak  # "BARK BARK BARK!"
```

**Rubbing a puppy's belly always calms them down**

Your Puppy has a `#rub_belly` method. This always calms down your Puppy, no matter how excited or angry they are.

```rb
my_puppy = Puppy.new

my_puppy.spray
my_puppy.spray
my_puppy.state  # :angry

my_puppy.rub_belly
my_puppy.state  # :calm
```
