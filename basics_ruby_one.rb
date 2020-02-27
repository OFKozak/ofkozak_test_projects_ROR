# *** task_5 ***
# Hello, world!
# Hi, how are you?
# Fine, how are you?
# Just fine!
   puts "\t#6" # *** task_6 ***
puts 1.class
puts 1.0.class
puts "Hello".class
   puts "\t#7" # *** task_7 ***
number_of_guesses = 9
 puts "number_of_guesses = #{number_of_guesses}"
body_temperature_c = 36.6
 puts "body_temperature_c = #{body_temperature_c} °C"
greeting = "Hello"
 puts "greeting = " + greeting
   puts "\t#8" # *** task_8 ***
puts 'Ruby keywords !!!'
# begin = 7
# end = 'go to end'
   puts "\t#9" # *** task_9 ***
a = 1
b = 2
total = a + b
 puts "total = #{total}"
total = a +
b
 puts "total = #{total}"
   puts "\t#10" # *** task_10 ***
a = 1
b = 2
total = a + b
 puts "total = #{total}"
total = a
+ b
 puts "total = #{total}"
   puts "\t#11" # *** task_11 ***      
a = 1
b = 2
total = a + b
 puts "total = #{total}"
total = a \
+ b
puts "total = #{total}"
   puts "\t#12" # *** task_12 ***
a = 9
b = 4
c = a / b
puts "a = #{a}, b = #{b}, c = a / b = #{c}"
   puts "\t#13" # *** task_13 ***      
a = 9.0
b = 4
c = a / b
 puts "a = #{a}, b = #{b}, c = a / b = #{c}"
a = 9
b = 4.0
c = a / b
 puts "a = #{a}, b = #{b}, c = a / b = #{c}"
   puts "\t#14" # *** task_14 ***
puts 'ZeroDivisionError !!!'         
a = 9
b = 0
# c = a / b
puts "a = #{a}, b = #{b}, c = a / b = \"ZeroDivisionError\""
   puts "\t#15" # *** task_15 ***
a = 3.1415926536
b = 0
c = a / b
puts "a = #{a}, b = #{b}, c = a / b = #{c}"
   puts "\t#16" # *** task_16 ***
a = 9
b = 4
c = a % b
 puts "a = #{a}, b = #{b}, c = a % b = #{c}"
a = 12.95
b = 3.18
c = a % b
 puts "a = #{a}, b = #{b}, c = a % b = #{c}"
    puts "\t#17" # *** task_17 ***
x = 9
 puts "x = #{x}, x**3 = #{x**3}"
x = 5
 puts "x = #{x}, x**-1 = #{x**-1}"
puts ' at the same time'
x = 5.0
 puts "x = #{x}, x**-1 = #{x**-1}"
     puts "\t#18" # *** task_18 ***
puts 'Hello, everybody!'
     puts "\t#19" # *** task_19 ***
puts '\\\' Hello, everybody! \\\''
     puts "\t#20" # *** task_20 ***
puts "Now it is #{Time.now.hour}:#{Time.now.min}"
     puts "\t#21" # *** task_21 ***
puts "This string literal consists of part one, \ 
new line part two \ 
and new line part three."
     puts "\t#22" # *** task_22 ***
puts %-Many more of them live next door (%)-
puts %q(Many more of them live next door (%q))
puts %Q|Many more of them live next door (%Q)|
     puts "\t#23" # *** task_23 ***
puts %Q|Today is February #{Time.now.day}th|
puts %Q(90 degrees = #{0.5*Math::PI} radians)
     puts "\t#24" # *** task_24 ***
string_one = "And the band "
string_two = "begins to play"
puts string_one + string_two
     puts "\t#25" # *** task_25 ***
string_one = "February "
string_two = "th"
puts 'TypeError !!!'
 # puts string_one + 25 + string_two
puts string_one + 25.to_s + string_two
     puts "\t#26" # *** task_26 ***     
puts 'to be' == 'to be'
     puts "\t#27" # *** task_27 ***
string = "Ruby On Rails "
puts string * 3
     puts "\t#28" # *** task_28 ***
string = "test "
puts string << "projects " << "ROR"
     puts "\t#29" # *** task_29 ***
string = 'I love Ruby'
puts %Q|#{string[7]}, #{string[-4]}|
puts %Q(#{string[0]}, #{string[-string.length]})
     puts "\t#30" # *** task_30 ***
string = 'Ruby'
puts string[string.length].inspect
     puts "\t#31" # *** task_31 ***
string = 'Hello Ruby'
puts "#{string[6, 4]}, #{string[-4, 4]}"
     puts "\t#32" # *** task_32 ***
string = 'Ruby is awesome'
string[4, 3] = "" 
puts string
     puts "\t#33" # *** task_33 ***
string = 'RUBY'
puts string.downcase
     puts "\t#34" # *** task_34 ***
string = 'Ruby courses'
puts string.length
     puts "\t#35" # *** task_35 ***
string = 'Ruby'
puts string.reverse
# additional tasks
     puts "\t#a1" # *** additional_task_1 ***
puts 'its_method'
def its(string)
  puts "It's #{string}"
end
     puts "\t#a2" # *** additional_task_2 ***
its("break")
its(  "break")
its"break"
its   "break"
     puts "\t#a3" # *** additional_task_3 ***
if 0.4 - 0.3 == 0.1
   puts "true"
else
   puts "false"
end
     puts "\t#a4" # *** additional_task_4 ***
puts '#{'
puts "\#\{"
     puts "\t#a5" # *** additional_task_5 ***
c = 123.456789
puts "c is about %d" % c
puts "c is about %.4f" % c
     puts "\t#a6" # *** additional_task_6 ***
puts "\u20ac"
puts "\u00A5"
puts "\u0024"