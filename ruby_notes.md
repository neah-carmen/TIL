Ruby indents using two spaces instead of 4-5 spaces
```
while x = 0  
  if x != 10  
    x = x + 1  
  elsif x = 10  
    break  
  end  
end  
```

`else` never gets any conditional statements  
`else` is like a 'none of the above' selection on multiple choice  
`else` can also be thought of as 'otherwise'  
```
if month == "November"  
  put "You are a Scorpio"  
elsif month == "June"  
  put "You are a Cancer"  
else  
  put "You are a Libra"  
end  
```

when using `||` or any comparison to compare more than one conditional, there has to be an conditional on both sides of the `||`  
```
name = gets.chomp  
if name == John || name == Johnathan  
```
not `if name == John || == Johnathan`  
```
  puts "Can I call you JJ?"  
else  
  puts "I can't help you then..."  
end  
```

interpolation is composed of `#{variable}`  
interpolation only works with strings surrounded by ""  

`gets.chomp` is one way to query the user for input  
`gets.chomp` is actually also the `.chomp` method applied to the `gets` command  

the arithmetic operator of raising something to an exponent is **  
c = (a^2 + b^2)^(1/2) is written like:  
`c = (a**2 + b**2)**(1/2)`  

invoking a method on a string is:  
`string.method_name`  
examples: .upcase, .downcase, .reverse, .length, .next, .pred  
`puts "hello".upcase`  
invoking a method on an interpolated string is:  
#{string.method_name}  
`puts #{hello.upcase}`  

converting between classes is also a method  
```
puts "How old are you?"  
age = gets.chomp  
age = age.to_i  
```

there is a slight difference between `p`, `puts`, and `print`  
`p` is preferable to the other methods unless querying the user  
`p` passes a 'inspect' method to the data and displays the literal data  
`puts` adds a new line at the end of the data  
```
puts "Input a word:"  
word = gets.chomp #=> Input a word:  
                  #=> _  
```
`print` does not add a new line at the end of the data  
```
puts "Input a word:"  
word = gets.chomp #=> Input a word: _  
```

puts normally does not take an = conditional  
i have made this mistake a couple times now and this is a note for next time  

`.times` loops should have thier own end `end` statement  
```
10.times do  
  puts "Hi how are you?"  
end  
```
`while` loops should also have thier own end `end` statement  
```
while iteration != 10  
  puts "Hi how are you?"  
  iteration = iteration + 1  
end  
```
loops can be nested
```
2.times do  
  print "Outer"  
  3.times do  
    print "Inner"  
  end  
end  
```

command to generate random numbers in Ruby is `rand(x..y)`  
where x is the first number in the range and y is the second number in the range  

# arrays
indices in arrays start a 0 ... 99  
```
array = [1, 2, 3, 4, 5]  
p array[-1] #=> 5  
```
a negative index starts from the last object of the array  
`<<` or the 'shovel' operator will add an object to the end of the array  
```
array = [1, 2, 3, 4, 5]  
array << 6 #=> [1, 2, 3, 4, 5, 6]  
```
arrays can also have their on methods  
```
array = [1, 2, 3, 4, 5]  
array.reverse = [5, 4, 3, 2, 1]  
```
or `array.sample` which selects an object from a random index  
```
array = [1, 2, 3, 4, 5]  
array.sample #=> rand(1..5)  
```
or `array.length` which returns the number of objects in the array  
this is useful because this can be combined with while loops to iterate through an array  
```
array = [1, 2, 3, 4, 5]  
while index < array.length  
  puts "#{array[index]}"  
  index = index + 1  
end  
```
array transformations that can be performed  
`.map`, `.select`, `.reduce`  

an array element can also be an array of its own  
there are two ways to access elements of nested array  
```
array = ["a", "b", "c", [1, 2, 3, 4]]  
array[3][3] #=> 4  
```
but also the method `array.dig` will accomplish the same  
`array.dig(3, 3)` #=> `4`

array index starts at 0 but array length does not  
you made this mistake in arrays checkpoint part 2  
```
array = [5, 4, 3, 2, 1]  
array[4] #=> 1  
p array.length #=> 5  
```

hash is another object class in Ruby  
hash is object class composed of paired elements  
the `=>` operator is called the 'hash rocket'  
`hash = {"a" => 1, "b" => 2, "c" => 3, "d" => 4}`  
to access value of a given element in a hash  
`p hash["c"]` #=> `3`  
to add another hash pair to the hash  
```
hash["e"] = 5  
p hash #=> {"a"=>1, "b"=>2, "c"=>3, "d"=>4, "e"=>5}  
```
this can also be used to update the value of a key pair  

an array can also be an element of a key pair in a hash  
```
hash = {"a" => 1, "b" => 2, "c" => ["a1", "b2"]} 
p hash["c"][0]  #=> "a1"  
```

symbols are another object class in Ruby  
symbols are immutable  
the : is used to define a symbol   
`x = :name`

easier way to iterate an integer  
`index = index + 1`  
is the same as:  
`index += 1`  

functions are defined by the `def` keyword and can optionally take arguments via `()`  
```
def function()  
  puts "Hello, I'm a program:"  
  x = gets.chomp  
  return x  
end  
p function()  
```

to check if a variable has been set and to use it as a while conditional  
refer to prework/week_03/07_maximum_number.rb  
`while defined?(@max_number) == nil`  

for encoding / decoding --  
refer to prework/week_03/10_secret_code.rb  
as an example of using regular expressions with a hash and the .gsub method  
`secret = not_secret.gsub(/[A-Z]/, converter)`  

irb is invoked in terminal via the command  
`irb`  

classes are a type of data object in Ruby  
one of the main paradigms of Ruby as a part of object oriented programming  
classes are defined and when defined, standard nomenclature dictates that:  
they are always capitalized  
```
class Name
end
```

a class has to be instantiated before its methods can be utilized in your code  
```
class Name  
  def method  
    puts "I'm methodical"  
  end  
end  
new_class = Name.new  
```
to make a call to the method in a class  
you do not invoke the actually class name  
but the variable name to which the class was instantiate by  
`puts new_class.method()`  

Ruby classes can take a special method called initialize and it is known as an constructor  
the constructor instance method will automatically run whenever the class gets a method instantiated  
```
class Name  
  def initialize  
    puts "I have been initialized"  
  end  
end  
new_class = Name.new  
```

whatever happens in a method stays in a method  