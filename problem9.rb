# Special Pythagorean triplet
# Problem 9 
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.




require 'complex'

b = 0
product = []
for i in 1..500 do
  for j in 1..500 do
    c = (i**2)+(j**2)
    cc = c**0.5
    if i+j+cc == 1000
        puts (i**2)+(j**2)
    end
  end
end

