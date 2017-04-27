# Smallest multiple
# Problem 5 
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?



require 'prime'

sosu = Prime.each(20).to_a
answer = []
count = 0
toma = 0
for i in 1..20 do
  count = 0
  toma = i
  for j in sosu do
     while toma%j == 0
      toma =  toma/j
      count += 1
    end
    answer << [j, count]
  end
end

answer.each do |val1, val2|
  puts val1
end



#別回
 puts (1..20).to_a.inject(:lcm)
