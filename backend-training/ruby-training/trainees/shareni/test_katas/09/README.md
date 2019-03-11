# Change Machine

You're building a machine that dispenses change at a supermarket counter. Your machine only holds coins, not paper bills, and it's hooked up to a cash register.

When the customer checks out and pays with cash, the register will tell you how much the stuff cost and how much the customer paid. You'll have to dispense the exact change by calling `quarter`, `dime`, `nickel`, and `penny` to give the customer each coin.

# Usage

Edit `lib/change_machine.rb` to build your change machine's functionality. We've given you the basic structure of your new change machine.

Then run `rspec` in this directory to see if your change machine meets the spec.

The spec below is encoded into an RSpec test suite in `spec/change_machine_spec.rb`.

# Spec

**Machine is always told item cost, amount the customer paid, and then asked to dispense change**

The manufacturer of the cash register guarantees they'll call your ChangeMachine class like this:

```rb
machine = ChangeMachine.new
machine.cost 495  # item cost $4.95
machine.paid 600  # customer paid $6.00
machine.dispense_change  # time to spit out a nickel!
```

**Machine dispenses exact change**

You're dealing with money here, so it's really important you dispense exact change. Luckily, the test suite checks a few cases to make sure you're accurate.

Examples:

```rb
machine = ChangeMachine.new
machine.cost 175  # item cost $1.75
machine.paid 200  # customer paid $2.00
machine.dispense_change  # owe 25 cents; call `quarter` once to dispense one quarter
```

```rb
machine = ChangeMachine.new
machine.cost 144  # item cost $1.44
machine.paid 200  # customer paid $2.00
machine.dispense_change  # owe 56 cents
                         # call `penny` once, `nickel` once, and `quarter` twice
```

```rb
machine = ChangeMachine.new
machine.cost 125  # item cost $1.25
machine.paid 200  # customer paid $2.00
machine.dispense_change  # owe 75 cents; call `quarter` three times
```

**Machine does not dispense change when the customer pays with exact change**

When the customer pays the exact amount, you don't have to dispense change.

Example:

```rb
machine = ChangeMachine.new
machine.cost 320 # item cost $3.20
machine.paid 320 # customer paid $3.20
machine.dispense_change  # nothing owed; don't dispense change
```

**Machine does not dispense more than $0.99**

If we owe the customer more than a dollar, the cashier will hand the customer bills. You only have to worry about paying the change portion.

Example:

```rb
machine = ChangeMachine.new
machine.cost 450  # item cost $4.50
machine.paid 575  # customer paid $5.75
machine.dispense_change  # dispense one quarter
```

**Machine does not dispense when the customer isn't done paying**

If the customer hands the cashier money and hasn't paid the full amount owed, you shouldn't dispense their change.

Example:

```rb
machine = ChangeMachine.new
machine.cost 800  # item cost $8.00
machine.paid 600  # customer paid $6.00
machine.dispense_change  # nothing owed; don't dispense change
```
