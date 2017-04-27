#summation pf primes

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

require 'prime'


prime =  Prime.each(2000000).to_a
puts prime.inject{|sum, n| sum+n}








# answer = 2
# a = 0
# for i in 3..10 do
#   # a = 0
#   for j in 2..i-1 do
#     a = 0
#     if i%j == 0
#       a +=1
#       break
#     elsif i%2 == 0
#       a +=1
#       break
#     end
#     puts answer
#     if a == 0
#       answer += i
#     end
#   end
# end
# # puts answer
