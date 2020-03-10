   puts "\t#1" # *** task_1 ***
3 + 9
print '3 + 9 # => ', 3 + 9
   puts "\n\t#2" # *** task_2 ***
2 + 2 * 2
 print '2 + 2 * 2 # => ', 2 + 2 * 2, "\n"
(2 + 2) * 2
 print '(2 + 2) * 2 # => ', (2 + 2) * 2
   puts "\n\t#3" # *** task_3 ***
64 ** (1/2)
 print '64 ** (1/2) # => ', 64 ** (1/2), "\n"
64 ** (1/2.0)
 print '64 ** (1/2.0) # => ', 64 ** (1/2.0)
   puts "\n\t#4" # *** task_4 ***
21 + 79
 print '21 + 79 # => ', 21 + 79, "\n"
457 - 154
 print '457 - 154 # => ', 457 - 154, "\n"
25 * 4
 print '25 * 4 # => ', 25 * 4, "\n"
6_363 / 21
 print '6_363 / 21 # => ', 6_363 / 21
   puts "\n\t#5" # *** task_5 ***
13 > 9
 print '13 > 9 # => ', (13 > 9).inspect, "\n"
9 >= 9
 print '9 >= 9 # => ', (9 >= 9).inspect, "\n"
9 < 13
 print '9 < 13 # => ', (9 < 13).inspect, "\n"
13 <= 13
 print '13 <= 13 # => ', (13 <= 13).inspect
   puts "\n\t#6" # *** task_6 ***
puts '# The combined comparison operator'
puts "# This \"three-way comparison operator\", also known as \"spaceship operator\""
puts 'Integers'
print '3 <=> 3 # => ', 3 <=> 3, "\n"
print '3 <=> 5 # => ', 3 <=> 5, "\n"
print '5 <=> 3 # => ', 5 <=> 3, "\n"
puts 'Floats'
print '3.5 <=> 3.5 # => ', 3.5 <=> 3.5, "\n"
print '3.5 <=> 5.5 # => ', 3.5 <=> 5.5, "\n"
print '5.5 <=> 3.5 # => ', 5.5 <=> 3.5, "\n"
puts 'Strings'
print "\"a\" <=> \"a\" \# => ", "a" <=> "a", "\n"
print "\"a\" <=> \"b\" \# => ", "a" <=> "b", "\n"
print "\"b\" <=> \"a\" \# => ", "b" <=> "a", "\n"
print "\"a\" <=> \"aa\" \# => ", "a" <=> "aa", "\n"
print "\"zz\" <=> \"aa\" \# => ", "zz" <=> "aa", "\n"
puts 'Arrays'
print '[] <=> [] # => ', [] <=> [], "\n"
print '[1, 2, 3] <=> [1, 2, 3] # => ', [1, 2, 3] <=> [1, 2, 3], "\n"
print '[1, 2, 3] <=> [1, 2, 4] # => ', [1, 2, 3] <=> [1, 2, 4], "\n"
print '[1, 2, 4] <=> [1, 2, 3] # => ', [1, 2, 4] <=> [1, 2, 3], "\n"
print '[1, 2, 4] <=> [] # => ', [1, 2, 4] <=> [], "\n"
puts 'Ranges'
range_one = 1..10
range_two = 1..10
 print 'range_one = ', range_one, '   range_two = ', range_two, "\n"
  print ' range_one <=> range_two # => ', range_one <=> range_two, "\n"
  range_one = 1..10
  range_two = 1...10
 print 'range_one = ', range_one, '   range_two = ', range_two, "\n"
  print ' range_one <=> range_two # => ', (range_one <=> range_two).inspect, "\n"
  range_one = 1..9
  range_two = 1..10
 print 'range_one = ', range_one, '   range_two = ', range_two, "\n"
  print ' range_one <=> range_two # => ', (range_one <=> range_two).inspect, "\n"
puts 'Hashes'
hash_one = {"a" => "b"}
hash_two = {"a" => "b"}
 print 'hash_one = ', hash_one, '   hash_two = ', hash_two, "\n"
  print ' hash_one <=> hash_two # => ', hash_one <=> hash_two, "\n"
hash_one = {"a" => "b"}
hash_two = {"a" => "c"}
 print 'hash_one = ', hash_one, '   hash_two = ', hash_two, "\n"
  print ' hash_one <=> hash_two # => ', (hash_one <=> hash_two).inspect, "\n"
hash_one = {"a" => "c"}
hash_two = {"a" => "b"}
 print 'hash_one = ', hash_one, '   hash_two = ', hash_two, "\n"
  print ' hash_one <=> hash_two # => ', (hash_one <=> hash_two).inspect
   puts "\n\t#7" # *** task_7 ***
1 == 1
print '1 == 1 # => ', 1 == 1
   puts "\n\t#8" # *** task_8 ***
1 == 1.0
print '1 == 1.0 # => ', 1 == 1.0
  puts "\n\t#9" # *** task_9 ***
'Ruby' == 'Ruby'
print "\'Ruby\' == \'Ruby\' # => ", 'Ruby' == 'Ruby'
   puts "\n\t#10" # *** task_10 ***
1.eql?(1.0)
print '1.eql?(1.0) # => ', 1.eql?(1.0)
   puts "\n\t#11" # *** task_11 ***
1.equal?(1)
print '1.equal?(1) # => ', 1.equal?(1)
   puts "\n\t#12" # *** task_12 ***
'Ruby' == 'Ruby'
 print "\'Ruby\' == \'Ruby\' # => ", 'Ruby' == 'Ruby', "\n"
'Ruby' === 'Ruby'
 print "\'Ruby\' === \'Ruby\' # => ", 'Ruby' === 'Ruby'
   puts "\n\t#13" # *** task_13 ***
string_one = 'Ruby'
 print 'string_one = ', string_one.inspect, ' # string_one.object_id = ', string_one.object_id, "\n"
string_two = 'Ruby'
 print 'string_two = ', string_two.inspect, ' # string_two.object_id = ', string_two.object_id, "\n"
   "Ruby".equal?("Ruby")
 print 'string_one.equal?(string_two) # => ', string_one.equal?(string_two)
   puts "\n\t#14" # *** task_14 ***
print '(1..100).include?(55) # => ', (1..100).include?(55), "\n"
print '(1..100) === 55 # => ', (1..100) === 55
   puts "\n\t#15" # *** task_15 ***
print 'Numeric === 5 # => ', Numeric === 5, "\n"
print "String === \'test\' # => ", String === 'test'
   puts "\n\t#16" # *** task_16 ***
x = 3
print "x = ", x, "\n"
print 'x > 1 && x < 9 # => true' if x > 1 && x < 9
   puts "\n\t#17" # *** task_17 ***
a = nil
b = false
c = 5
print 'a = ', a.inspect, '   b = ', b, '   c = ', c, "\n"
print '! (b && a) && c # => ', ! (b && a) && c
   puts "\n\t#18" # *** task_18 ***
x = 7
print "x = ", x, "\n"
print 'x < 3 || x > 5 # => true' if x < 3 || x > 5
   puts "\n\t#19" # *** task_19 ***
a = 9
b = 15
print 'a = ', a, '   b = ', b, "\n"
puts a > b ? 'Ruby' : 'Rails'
   puts "\t#20" # *** task_20 ***
a = 10
if a == 10
   puts 'a equal 10'
else
   puts 'a does not equal 10'
end
   puts "\n\t#21" # *** task_21 ***
x = rand(361)
if x <= 90
   puts "x = #{x} – the first quarter [0;90]"
elsif x > 90 && x <=180
   puts "x = #{x} – the second quarter (90;180]"
elsif x > 180 && x <=270
   puts "x = #{x} – the third quarter (180;270]"
else
   puts "x = #{x} – the forth quater (270;360]"
end
case x
when 0...90 then puts "x = #{x} – the first quarter [0;90]"
when 91..180 then puts "x = #{x} – the second quarter (90;180]"
when 181..270
then puts "x = #{x} – the third quarter (180;270]"
else puts "x = #{x} – the forth quater (270;360]"
end
if (0..90) === x
   puts "x = #{x} – the first quarter [0;90]"
elsif (91..180) === x
   puts "x = #{x} – the second quarter (90;180]"
elsif (181..270) === x
   puts "x = #{x} – the third quarter (180;270]"
else
   puts "x = #{x} – the forth quater (270;360]"
end
case x
when 0...90
   puts "x = #{x} – the first quarter [0;90]"
when 91..180
   puts "x = #{x} – the second quarter (90;180]"
when 181..270
   puts "x = #{x} – the third quarter (180;270]"
else
   puts "x = #{x} – the forth quater (270;360]"
end