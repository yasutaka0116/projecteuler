# 215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 21000?

def digit_sum(a)
  puts a.class
  a.to_s.split("").map{|s| s.to_i}.inject(:+)
end

puts digit_sum(2**1000)
