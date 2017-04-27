# Largest prime factor

# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?


require 'prime'
sosu = Prime.each(10000000).to_a
n = 600851475143
answer = 0
  for i in sosu do
    while n%i == 0
      n = n/i
      answer = i
    end
    if n <= 1
      break
    end
  end

puts answer

