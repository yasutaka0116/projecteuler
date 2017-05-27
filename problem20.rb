# n! means n × (n − 1) × ... × 3 × 2 × 1

# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

# Find the sum of the digits in the number 100!



def num(n)
  if n==0
    return 1
  else
    n*num(n-1)
  end
end

answer = num(100).to_s.split('')
puts answer.inject{|sum, n| sum.to_i + n.to_i}
