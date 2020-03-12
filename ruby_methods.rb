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
f = Proc.new {|a, b| a**b }
y = f.call(a,b)
y = f[a,b]
y = f.(a,b)
# *** task_20 ***     
l = -> (a, b) { a + b }