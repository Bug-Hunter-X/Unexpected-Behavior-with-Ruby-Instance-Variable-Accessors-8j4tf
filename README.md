# Unexpected Behavior with Ruby Instance Variable Accessors

This repository demonstrates a subtle bug that can occur in Ruby when defining getter and setter methods for instance variables with the same name.  The bug arises when the setter doesn't properly validate or type-check the input value, leading to unexpected behavior or runtime errors.

The `bug.rb` file shows the erroneous code. The `bugSolution.rb` file offers a solution.

## Bug Description

The primary issue stems from allowing the `value=` method to accept any input type (in this case, both numbers and strings).  This lack of type safety can result in unexpected interactions if the program later assumes `@value` is of a specific type.

## Solution

The solution involves adding input validation or type checking within the setter method to enforce expected data types or ranges. This helps prevent silent errors caused by invalid inputs and ensures program reliability.