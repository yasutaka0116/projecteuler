# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

# Evaluate the sum of all the amicable numbers under 10000.

require 'prime'

class Integer
  def my_divisor_list
    divisors = [1]
    primes = []
    Prime.prime_division(self).each do |prime|
      prime[1].times {primes << prime[0]}
    end

    1.upto(primes.size) do |i|
      primes.combination(i) do |prime|
        divisors << prime.inject{|a,b| a *= b}
      end
    end

    divisors.uniq!
    divisors.sort!
    divisors.pop
    return divisors.inject{|sum , ex| sum+ex}
  rescue ZeroDivisionError
    return
  end
end
answer = []

for i in 2..9999 do
  sum = i.my_divisor_list
  own = sum.my_divisor_list
  if own == i && !(i==sum)
     answer <<i
  end
end

puts answer.inject(:+)
