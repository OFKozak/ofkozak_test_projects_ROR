   puts "\t#1" # *** task_1 ***
x = 15
puts "x = #{x}"
   puts "\t#2" # *** task_2 ***
while x >= 0 do
    print x, "\s"
    x -=1
end
   puts "\n\t#3" # *** task_3 ***
x = 15
while x > 0 do
    print x, "\s" if x.even?
    x -=1
end
   puts "\n\t#4" # *** task_4 ***
x = 15
while x > 0 do
    print x, "\s" if x % 5 == 0
    x -=1
end   
   puts "\n\t#5" # *** task_5 ***
x = 1
until x > 20
    print x, "\s"
    x +=1
end
   puts "\n\t#6" # *** task_6 ***
array = [1, 2, 3, 4, 5]
puts array.pop until array.empty?
   puts "\t#7" # *** task_7 ***
x = 15
puts "x = #{x}"
x = x + 1
print "#{x = x - 1} " while x > 0
puts ""
x = 15
begin
   print "#{x} "
   x = x -1
end while x >= 0
print " # It\'s another way"
   puts "\n\t#8" # *** task_8 ***
array = [31, 32, 33, 34, 35]
print "array = #{array}\n"
for element in array
   print "#{element} "
end
puts ""
array.each {|element| print "#{element} "}
print " # It\'s another way"
  puts "\n\t#9" # *** task_9 ***
fruits = {:name => "apples", :shop => "Metro", :cost => 18}
print "fruits = #{fruits}\n"
for key, value in fruits
   puts "The key is :#{key}, the value is #{value}"
end
   puts "\t#10" # *** task_10 ***
fruits.each do |key, value|
   puts sprintf(":%s => %s", key, value)
end
puts ""
fruits.each {|key, value| puts sprintf(":%s => %s # It\'s another way", key, value)}
   puts "\t#11" # *** task_11 ***
50.times {|x| print (x + 1) == 21 || (x + 1) == 35 ? nil : "#{x + 1} "}
   puts "\n\t#12" # *** task_12 ***
array = [1, 2, 3, 4]
print "array = #{array}\n"
array_new = array.map {|x| x**3}
print "array_new = #{array_new}"
   puts "\n\t#13" # *** task_13 ***
array = [85, -45, 121, 11, 333, 90]
print "array = #{array}\n"
min = array[0]
for element in array[1, array.length-1]
   min = element if element < min
end
puts "min value array\'s element is #{min}"
puts "min value array\'s element is #{array.min} # the min method is another way"
max = array[0]
for element in array[1, array.length-1]
   max = element if element > max
end
puts "max value array\'s element is #{max}"
puts "max value array\'s element is #{array.max} # the max method is another way"
   puts "\t#14" # *** task_14 ***
2.upto(7).each {|x| print "#{x} "}
   puts "\n\t#15" # *** task_15 ***
6.downto(-3).each {|x| print "#{x} "}
   puts "\n\t#16" # *** task_16 ***
(-10..10).step(2) {|x| print "#{x} "}
puts ""
-10.step(10, 2) {|x| print "#{x} "}
print "# it\'s another way\n"
   puts "\t#17" # *** task_17 ***
15.times {|x| print "#{x + 1} "}
puts ""
15.times do |x|
   print "#{x + 1} "
end
print "# it\'s another way\n"
   puts "\t#18" # *** task_18 ***
sum = (1..50).reduce(:+)
puts "sum = #{sum}"
   puts "\t#19" # *** task_19 ***
print "Please input the number "
x = gets.to_i
puts "x = #{x}"
y = 1.0/x
puts "y = #{y}"
begin
    1/x
rescue ZeroDivisionError => e
    puts "Exception Class: #{ e.class.name }" 
    puts "Exception Message: #{ e.message }"
    puts "Please, try again using not zero value !"
end
# additional tasks
   puts "\t#a1" # *** additional_task_1 ***
i = 7
while i <= 98 do
   print "#{i} "
   i += 7
end
   puts "\n\t#a2" # *** additional_task_2 ***
for j in 0..9
   print "#{2**j} "
end
   puts "\n\t#a3" # *** additional_task_3 ***
for i in 1..10
   for j in 0..10
      if j == 0 then
         puts "   x #{i}"
      else   
         puts "#{i} x #{j} = #{i*j}"
      end
   end
end
   puts "\t#a4" # *** additional_task_4 ***
fibonacci = Array.new
   0.upto(9) do |n|
      case n
      when 0, 1
         fibonacci[n] = n
      else
         fibonacci[n] = fibonacci[n-1] + fibonacci[n-2]
      end
   end
   fibonacci.each { |element| print "#{element} " }
   puts "\n\t#a5" # *** additional_task_5 ***
array = [85, -45, 121, 11, 333, 90]
print "array = #{array}\n"
min = max = array[0]
array[0.next, array.length-1].each do |element|
   min = element if element < min
   max = element if element > max
end
puts "min = #{min}"
puts "max = #{max}"
   puts "\t#a6" # *** additional_task_6 ***
def my_method
 yield
end
my_method { puts 'ruby' }
   puts "\t#a7" # *** additional_task_7 ***
def my_method_new
 5.times { |t| yield if block_given? }
end
my_method_new { puts 'ruby on rails' }
   puts "\t#a8" # *** additional_task_8 ***
def factorial (n)
 factorial = 1
 1.upto(n) {|x| factorial *= x }
 puts "#{n}! = #{factorial}"
end
print "Please input the number "
factorial (gets.to_i)