def friday_number(month = Time.now.month, year = Time.now.year)
# *** О.Ф. Козак
# *** Метод для визначення кількості п'ятниць у місяці   
# визначення кількості діб у місяці через mdays[month]
 mdays = [nil, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
 mdays[2] = 29 if year % 4 == 0
# визначення кількості п'ятниць у місяці через цикл for 
 friday_total = 0
 for day in 1..mdays[month]
    friday_total += 1 if Time.local(year, month, day).wday == 5
 end
# виведення результатів обрахунку
 puts "year = #{year}"
 puts "month = #{month}"
 puts "friday_total = #{friday_total}"
 puts ""
# визначення кількості п'ятниць у місяці через ітератор - наступний спосіб реалізації
 friday_days = (1..mdays[month]).inject([]) do |total, day|
   total << day if Time.local(year, month, day).wday == 5
   total
 end
 # виведення результатів обрахунку
 puts "year = #{year}"
 puts "month = #{month}"
 puts "friday_days = #{friday_days}"
 puts "friday_total = #{friday_days.length}"
 puts""
 # визначення кількості п'ятниць у місяці через ітератор - ще один спосіб реалізації
 fr_total = (1..mdays[month]).inject(0) {|t, day| Time.local(year, month, day).wday == 5 ? t += 1 : t }
 # виведення результатів обрахунку
 puts "year = #{year}"
 puts "month = #{month}"
 puts "friday_total = #{fr_total}"
end
friday_number