# Largest palindrome product

# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.


l = 10000

for i in 100..999 do
  for j in 100..999 do
    aa = i*j
    if aa.to_s == aa.to_s.reverse
      l = aa if aa > l
    end
  end
end

puts l
