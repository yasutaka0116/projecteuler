# Longest Collatz sequence
# Problem 14 
# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.

# mid = 0
# answer = 0
# old = 0
# count = 1
# for i in 1..1000000 do
#   count = 0
#   mid = i
#   until mid == 1
#     unless mid%2 == 0
#       mid = mid*3+1
#       count += 1
#     end
#     if mid%2 == 0
#       mid = mid/2
#       count += 1
#     end
#   end
#   # puts count
#   if old < count
#     old = count
#     answer = i
#   end
# end



def sequence(n)
  n%2 == 0? n/2 : n*3+1
end

def num_steps(n)
  count = 1
  while n != 1
    n = sequence(n)
    count += 1
  end
  count
end

longest_chain = 0
starting_number = 0
t = 0
(2..1_000_000).each do |n|
  t = num_steps(n)
  if t > longest_chain
    starting_number = n
    longest_chain = t
  end
end

puts starting_number
