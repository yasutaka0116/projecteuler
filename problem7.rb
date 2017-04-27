# 10001st prime
# Problem 7 
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?



count = 1
a = 0
  for i in 3..1000000000 do
    a = 0
      for j in 2..i-1 do
        if i%j == 0
          a += 1
        break
        end
      end
    if a == 0
        count = count + 1
    end
    if count == 10001
      puts i
      break
    end
  end
