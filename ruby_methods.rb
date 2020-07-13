   puts "\t#1" # *** task_1 ***
def my_method(y)
    y *= 5
    puts "y = #{y}"
end
my_method 9
   puts "\t#2" # *** task_2 ***
def my_method(y)
    if y < 10 
       return y *= 5
    end
    y += 5   
end
puts "#{my_method 9} # => when argument is 9"
puts "#{my_method 20} # => when argument is 20"
   puts "\t#3" # *** task_3 ***
def my_method_one
    "Hi, how are you?"
end
def my_method_two
    return "Hi, how are you?"
end
puts "#{my_method_one} # => whithout return"
puts "#{my_method_two} # => whith return"
   puts "\t#4" # *** task_4 ***
def conversion(press_bar, temp_cels)
    [press_bar * 100_000, temp_cels + 273.15]
end
pressure_bar = 50
temperature_celsius = 23.7
puts "pressure_bar = #{pressure_bar} bar, temperature_celsius = #{temperature_celsius} °C"
pressure_pa, temperature_kelvin = conversion(pressure_bar, temperature_celsius)
puts "pressure_pa = #{pressure_pa} Pa, temperature_kelvin = #{temperature_kelvin} K"
   puts "\t#5" # *** task_5 ***
def my_method(i, j, k)
    puts "#{i + j * k}"
end
my_method(1, 2, 3)
undef my_method
puts "NoMethodError !!!"
# my_method(4, 5, 6) # NoMethodError
# *** task_6 ***
def to_be_or_not_to_be?
end
# *** task_7 ***
def reverse!(string)
end
   puts "\t#8" # *** task_8 ***
def greeting
    'Hi everybody!'
end
puts "#{greeting} # using greeting method"
alias hi greeting
puts "#{hi} # using hi method by alias"
   puts "\t#9" # *** task_9 ***
def my_method(a, b, c)
    (a + b + c)**2
end
puts "#{my_method(1, 2, 3)} # my_method(1, 2, 3)"
puts "#{my_method(4, 5, 6)} # my_method(4, 5, 6)"
   puts "\t#10" # *** task_10 ***
def my_method(a, b, c = 3)
    (a + b + c)**2
end
puts "#{my_method(1, 2)} # my_method(1, 2) and third default value is 3"
puts "#{my_method(4, 5, 6)} # my_method(4, 5, 6)"
   puts "\t#11" # *** task_11 ***
def part_hash(hash, keys_array)
    hash.select {|key, value| keys_array.include?(key)}
end
h = {one: "A", two: "B", three: "C", four: "D", five: "E", six: "F", seven: "G"}
print "h = #{h}\n"
k_array = [:one, :three, :five, :six]
print "k_array = #{k_array}\n"
print "#{part_hash(h, k_array)}  # it's the part_hash method's result"
   puts "\n\t#12" # *** task_12 ***
def min_array(arr)
    arr.inject {|min, el| min < el ? min : el}
end
array = [85, -45, 121, 11, 333, 90]
print "array = #{array}\n"
puts "min = #{min_array(array)}"
   puts "\t#13" # *** task_13 ***
def default(options)
   a = options[:one] || "AA"
   b = options[:two] || "BB"
   c = options[:three] || "CC"
   d = options[:four] ||"DD"
   e = options[:five] || "EE"
   f = options[:six] || "FF"
   g = options[:seven] || "GG"
   print "a = #{a}, b = #{b}, c = #{c}, d = #{d}, e = #{e}, f = #{f}, g = #{g}\n"
end
h = {one: "A", two: "B", four: "D", six: "F"}
 print "h = #{h}\n"
  default(h)
h = {three: "C", five: "E", seven: "G"}
 print "h = #{h}\n"
  default(h)
   puts "\t#14" # *** task_14 ***
def my_method(j, k, l)
   for i in 1..j
      yield k + l**i    
   end
end
my_method(2, 1, 2) {|x| puts x}
   puts "\t#15" # *** task_15 ***
def my_method(j, k, l, &b)
   for i in 1..j
      b.call(k + l**i)
   end
end
my_method(2, 1, 2) {|x| puts x}
 puts "\t#16" # *** task_16 ***
def my_method(j, k, l, b)
   for i in 1..j
      b.call(k + l**i)    
   end
end
p = Proc.new {|x| puts x}
my_method(2, 1, 2, p)
   puts "\t#17" # *** task_17 ***
array = [1, 2, 3, 4, 5]
print "array = #{array}\n"
multiplication = array.inject(1) {|total, element| total * element }
puts "multiplication = #{multiplication}"
multiplication = Proc.new {|total, element| total * element }
mult = array.inject(1, &multiplication)
puts "mult = #{mult} # => it's another way"
   puts "\t#18" # *** task_18 ***
string_array = ["in", "your", "head"]
print "string_array = #{string_array}\n"
upper = string_array.map {|w| w.upcase }
print upper, "\n"
uppercase = string_array.map &:upcase
print uppercase, " # => it's another way\n"
# *** task_19 ***
   puts "\t#19" # *** task_19 ***
a = 2
b = 3
f = Proc.new {|c, d| c**d }
x = f.call(a,b)
puts "x = #{x}"
y = f[a,b]
puts "y = #{y}"
z = f.(a,b)
puts "z = #{z}"
# *** task_20 ***
   puts "\t#20" # *** task_20 ***
lb = lambda { |c, d| c + d }
x = lb.call(a, b)
puts "x = #{x}"
lb = -> (c, d) { c + d }
y = lb.call(a, b)
puts "y = #{y}"
puts "#{(-> (c, d) {c + d}).call(a, b)} # => it's another way"
# additional tasks
   puts "\t#a1" # *** additional_task_1 ***
def factorial(n)   
   if n < 1                  # перевірка коректності значення аргументу
      raise "Будь ласка, використайте аргумент > 0"
   elsif n == 1              # якщо аоргумент дорівнює 1,
      1                      # то значення виклику дорівнює 1
   else                      # інакше факторіал n дорівнює n,
      n * factorial(n-1)     # помноженому на факторіал n-1
   end
end
# factorial(-1)
puts "factorial(1) = #{factorial(1)}"
puts "factorial(2) = #{factorial(2)}"
puts "factorial(3) = #{factorial(3)}"
   puts "\t#a2" # *** additional_task_2 ***
def proc_return_one
    Proc.new { return "proc"}.call
    return "proc_return method finished"
end
puts proc_return_one
def lambda_return_one
    lambda { return "lambda"}.call
    return "lambda_return method finished"
end
puts lambda_return_one
def proc_return_two
    puts "before proc"
    my_proc = proc { return "proc" }
    puts my_proc[]
    puts "after proc"
end
proc_return_two
def lambda_return_two
    puts "before lambda"
    my_lambda = -> { return "lambda" }
    puts my_lambda.call
    puts "after lambda"
end
lambda_return_two
pr = proc do |fst, snd, thd|
     p fst
     p snd
     p thd
end
pr.call('pr_first')
lb = lambda do |fst, snd, thd|
   p fst
   p snd
   p thd
end
# lb.call('lb_first') => wrong number of arguments (given 1, expected 3) (ArgumentError)
lb.call('lb_first', 'lb_second', 'lb_third')
   puts "\t#a3" # *** additional_task_3 ***
def multiplier(k) # метод повертає proc-об'єкт, що замикає в собі параметр k
    proc { |arr| arr.collect{|el| el*k} }
end
tripler = multiplier(3) # отримання proc-об'єкта, що знає, як потроїти число 
print tripler.call([1, 2, 3, 4, 5]) # виводиться [3, 6, 9, 12, 15]
   puts "\n\t#a4" # *** additional_task_4 ***
def divider(l) # метод повертає lambda-об'єкт, що замикає в собі параметр l
   ->(arr) { arr.reduce{ |sum, el| sum + el }.fdiv l }
end
array = [2, 3, 4, 5]
arithmetic_mean = divider(array.length)
puts arithmetic_mean.call(array)
def array_arithmetic_mean(arr) # ще один спосіб
   puts arr.reduce { |sum, el| sum + el}.fdiv arr.length
end
array_arithmetic_mean([2, 3, 4, 5])
   puts "\n\t#a5" # *** additional_task_5 ***
def substring_method(str)
   if str.length <= 2
      "The string is too short"
   elsif str.length.even?
      str[str.length/2 - 1, 2]
   else
      str[1, str.length - 2]
   end
end
puts substring_method("qw")
puts substring_method("qwert")
puts substring_method("qwerty")
   puts "\n\t#a6" # *** additional_task_6 ***
def vowel_letters(str)
   if str.class == String
      str.gsub(/[aeiouy]/, "@").chars.select { |el| el == "@" }.length
   else
      "Warning! The string argument is required!"
   end
end
puts vowel_letters("Hello, everybody!")
puts vowel_letters("qsc_wdv_rgn")
puts vowel_letters(123)
def vowel_letters(str) # it's another way
   if str.class == String
      str.chars.select { |el| ["a", "e", "i", "o", "u", "y"].include?(el) }.length
   else
      "Warning! The string argument is required!"
   end
end
puts vowel_letters("Wow, this is a jellyfish!")
puts vowel_letters("sdf_ghj_klm")
puts vowel_letters([4, 5, 6])
   puts "\n\t#a7" # *** additional_task_7 ***
def char_collection(char_one, char_two)   
   (char_one..char_two).to_a[1...-1].each { |el| print "#{el} " }
end
char_collection("A", "F")
puts
char_collection("k", "t")