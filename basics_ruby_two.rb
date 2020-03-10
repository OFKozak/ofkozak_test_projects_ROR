   puts "\t#1" # *** task_1 ***
array = [1, 2, 3, 4, 5]
print array
   puts "\n\t#2" # *** task_2 ***
array = [0..4, 5...10, 10..14]
print array
   puts "\n\t#3" # *** task_3 ***
array = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
print array
   puts "\n\t#4" # *** task_4 ***
x = 9
y = 3
array = [x + y, x * y, x - y, x / y]
print array
   puts "\n\t#5" # *** task_5 ***
array = %w[it is an array %w] # same as ['it', 'is', 'an', 'array', '%w']
 print array, "\n"
array = %w| it is another array %w | # same as ['it', 'is', 'another', 'array', '%w']
 print array, "\n"
array = %w{it is another array %w} # same as ['it', 'is', 'another', 'array', '%w']
 print array, "\n"
array = %w[\n \sit \tis \san \tarray \s%W] # same as ['\n', '\sit', '\tis', '\san', '\tarray', '\s%W']
 puts array 
array = %W(\n \sit \tis \san \tarray \s%W) # same as ["\n", "\sit", "\tis", "\san", "\tarray", "\s%W"]
 puts array
   puts "\t#6" # *** task_6 ***
array = [30, 31, 32, 33, 34, 35, 36, 37, 38, 39]
 print array, "\n"
print '   first element: ', array[0], "\n" # first element is 30
print '   last element: ', array[-1], "\n" # last element is 39
print '   last element (another way to query): ', array[array.size - 1] # last element is 39
   puts "\n\t#7" # *** task_7 ***
array[0] = [15..20]
print array
   puts "\n\t#8" # *** task_8 ***
array[13] = 40
print array
   puts "\n\t#9" # *** task_9 ***
array = %w[a b c d e]
 print array, "\n"
print array[0, 2], "\n" # the first two elements
print array[0..1], "\n" # another way to access the first two elements
print array[-2, 2], "\n" # the last two elements
print array[-2..-1] # another way to access the last two elements
   puts "\n\t#10" # *** task_10 ***
array = [1, 2]
 print array, "\n"
array[2, 3] = [3, 4, 5]
 print array, "\n"
array[2..4] = [3, 4, 5] # another way to assign elements
 print array
   puts "\n\t#11" # *** task_11 ***
array[-2] = 6
print array
   puts "\n\t#12" # *** task_12 ***
array_a = [5, 7, 10]
 print 'array_a = ', array_a, "\n"
array_b = [3, 5, 7, 9, 11]
 print 'array_b = ', array_b, "\n"
array = array_a + array_b
 print 'array = array_a + array_b => ', array
   puts "\n\t#13" # *** task_13 ***
puts 'TypeError !!!'
# array = array + 'abc' # TypeError
puts "array = array + \'abc\'"
   puts "\t#14" # *** task_14 ***
array = array_b - array_a
print 'array = array_b - array_a => ', array
   puts "\n\t#15" # *** task_15 ***
array = []
array << 71 << 82 << 93 << 104
print array
   puts "\n\t#16" # *** task_16 ***
array = [2] * 10
print array
   puts "\n\t#17" # *** task_17 ***
a = [1, 1, 2, 2, 3, 3, 4]
 print 'a = ', a, "\n"
b = [5, 5, 4, 4, 3, 3, 2]
 print 'b = ', b
   puts "\n\t#18" # *** task_18 ***
print 'a | b => ', a | b
   puts "\n\t#19" # *** task_19 ***
print 'b | a => ', b | a
   puts "\n\t#20" # *** task_20 ***
print 'a & b => ', a & b, "\n"
print 'b & a => ', b & a
   puts "\n\t#21" # *** task_21 ***
array = %w[cup coffee milk sugar]
print array, "\n" 
print array.any? { |word| word.length >= 4 }, " # length of strings >= 4"
   puts "\n\t#22" # *** task_22 ***
array = %w{head body hands legs}
print array, "\n" 
print array.collect { |x| x + "?" }
   puts "\n\t#23" # *** task_23 ***
array = %w|bag book box pen pencil|
print array, "\n" 
array.delete_at(2)
print array
   puts "\n\t#24" # *** task_24 ***
array_abc = ('A'..'Z').to_a
print array_abc, "\n"
array_abc.each {|x| print x, "\s"}
   puts "\n\t#25" # *** task_25 ***
array = Array.new
print 'array = ', array, "\n"
print array.empty?, " # true => the array is empty"
   puts "\n\t#26" # *** task_26 ***
print array_abc.first, " # the first element of array_abc\n"
print array_abc.last, " # the last element of array_abc"
   puts "\n\t#27" # *** task_27 ***
array = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
print 'array = ', array, "\n"
print array.flatten, ' # array.flatten', "\n"
array.flatten!
print array, ' # array.flatten!'
   puts "\n\t#28" # *** task_28 ***
array = %w[dog cat parrot]   
print 'array = ', array, "\n"
boolen = array.include?("cat")
print boolen, ' # true => the element is included in the array'
   puts "\n\t#29" # *** task_29 ***
array = Array.new(10) {|i| i+1}
print 'array = ', array, "\n"
print array.select { |number| number.even? }
   puts "\n\t#30" # *** task_30 ***
array = [1, 2, 2, 3, 4, 4, 5, 6, 6, 7, 8, 8, 9, 10, 10]   
print 'array = ', array, "\n"
print array.uniq
   puts "\n\t#31" # *** task_31 ***
fruits = Hash.new
print "fruits = ", fruits
   puts "\n\t#32" # *** task_32 ***
fruits = {"name"=>"apples", "shop"=>"Metro", "cost"=>18}
print "fruits = ", fruits
   puts "\n\t#33" # *** task_33 ***
user = {"name"=>"Petro", "last_name"=>"Petrenko", "age"=>21} # it's the old syntax
 print "user = ", user, "\n"
user = {name: "Petro", last_name: "Petrenko", age: 21} # it's the new syntax
 print "user = ", user
   puts "\n\t#34" # *** task_34 ***
range_one = 1..10
print 'range_one = ', range_one
   puts "\n\t#35" # *** task_35 ***
range_two = 1...10
print 'range_two = ', range_two
   puts "\n\t#36" # *** task_36 ***
boolen_one = range_one.include? 5
 print boolen_one, ' # range_one is including 5 itself', "\n"
boolen_two = range_two.include? 5
 print boolen_two, ' # range_two is including 5 itself', "\n"
boolen_two = range_two.include? 10
 print boolen_two, ' # range_two is excluding 10 itself' 
   puts "\n\t#37" # *** task_37 ***
range_abc = 'A'..'K'
print "range_abc = ", range_abc
   puts "\n\t#38" # *** task_38 ***
range_abc.each {|l| print "[#{l}]"}
   puts "\n\t#39" # *** task_39 ***
range_abc.step(2) {|l| print "[#{l}]"}
   puts "\n\t#40" # *** task_40 ***
array_abc = range_abc.to_a
print "array_abc = ", array_abc
   puts "\n\t#41" # *** task_41 ***
sym = :symbol
p sym
   puts "\t#42" # *** task_42 ***
str = "string"
sym = str.to_sym
p sym
   puts "\t#43" # *** task_43 ***
o = nil
boolen = o.nil?
print boolen, ' # is nil'
   puts "\n\t#44" # *** task_44 ***
if false != nil
   puts 'false != nil  =>  true'
else
   puts 'false != nil  =>  false'
end
if false != 0
   puts 'false != 0  =>  true'
else
   puts 'false != 0  =>  false'
end
if false != ''
   puts "false != \'\'  =>  true"
else
   puts "false != \'\'  =>  false"
end
if false != {}
   puts 'false != {}  =>  true'
else
   puts 'false != {}  =>  false'
end
if false != []
   puts 'false != []  =>  true'
else
   puts 'false != []  =>  false'
end
   puts "\t#45" # *** task_45 ***
variable_a = 0.0 if false
p variable_a
puts 'NameError !!!'
# print variable_b # NameError
   puts "\t#46" # *** task_46 ***
PA_PER_BAR = 100_000
print 'PA_PER_BAR = ', PA_PER_BAR
 puts "\n\t#47" # *** task_47 ***
x = 1
print 'x = ', x, "\n"
print x += 1, ' # x += 1'
   puts "\n\t#48" # *** task_48 ***
f, g, h = 9, 18, 27
print 'f = ', f, ' g = ', g, ' h = ', h, ' # f, g, h = 9, 18, 27'
   puts "\n\t#49" # *** task_49 ***
i = j = 33
print 'i = ', i, ' j = ', j, ' # i = j = 33'
   puts "\n\t#50" # *** task_50 ***
k = 7
print "k = ", k, "\n"
print k += 2, ' # k += 2', "\n"
print k -= 4, ' # k -= 4', "\n"
print k *= 3, ' # k *= 3', "\n"
print k /= 5, ' # k /= 5'