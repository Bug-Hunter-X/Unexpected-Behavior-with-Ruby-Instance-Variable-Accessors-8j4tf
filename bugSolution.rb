```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def value=(new_value)
    if new_value.is_a?(Numeric)
      @value = new_value
    else
      raise TypeError, "Value must be a number"
    end
  end
end

my_object = MyClass.new(10)
puts my_object.value # => 10
puts my_object.value = 20 # => 20
puts my_object.value # => 20

#This will now raise an exception
begin
  my_object.value = "hello"
rescue TypeError => e
  puts e.message # => "Value must be a number"
end
```