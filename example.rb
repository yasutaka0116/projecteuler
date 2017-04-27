# 1

# answer = 0
# for i in 1..1000 do
#   if i%3 == 0 || 1%5 == 0
#      answer = answer + 1
#    end
# end
# puts answer

# # 3
# require 'prime'
# require 'mathn'
# puts 600851475143.prime_devision

# 5
# sum = 0
# squere = 0
# for i in 1..1000 do
#   sum = sum + i**2
#   squere = squere + i
# end

# puts squere**2 -sum





# 9
# eh
# a = rand(1..1000)
# b = rand(1..1000)
# c = rand(1..1000)

# a**2 + b**2 = c**2




#時間外回答

1
answer = 0
# for i in 1..999 do
#   if i%5 == 0 || i%3 == 0
#     answer = answer + i
#   end
# end
# puts answer

# for i in 1..999 do
#   if i%3 == 0|| i%5 == 0
#     answer +=i
#   end
# end
# puts answer

# puts (0...1000).map{|i|(i%3 == 0 || i%5 == 0)? i:0}.inject(:+)



# 2
# count = [1,2]
# answer = 0
# while count.last(2).inject(:+) < 4000000
#   puls = count.last(2).inject(:+)
#   count.push(puls)
# end
# count.each do |count|
#   if count%2 == 0
#     answer = answer + count
#   end
# end
# puts answer

#2別海
# answer = 0
# a = 1
# b = 2
# while a+b < 4000000
#   n = a+b
#   if n%2 == 0
#     answer = a+b
#   end
#   a = b
#   b = n
# end
# puts answer



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


# #3

#4

#5
#  sum = 0
#  squere = 0
#  for i in 1..100 do
#    sum = sum + i**2
#    squere = squere + i
#  end



#6
# require 'complex'
# for i in 1..500 do
#   for j in 1..500 do
#     a, b, c = i,j, Math.sqrt(i**2+j**2)
#     if a+b+c == 1000
#       puts a
#       puts b
#       puts c
#     end
#   end
# end

# for i in 101..999 do
#   for j in 101..999 do
#      aa = i*j
#     if aa.to_s == aa.to_s.reverse
#       puts aa
#     end
#   end
# end


#7
# answer = []
# count = 0
# answer = []
# for n in 2..1000000 do
#   j = n
#   until j == 1 do
#     if j%2 == 0
#       j = j/2
#       count = count + 1
#     else
#       j = j*3+1
#       count = count +1
#     end
#   end
#   answer.push(count)
# end
# puts answer.index(answer.max)

#8
# aa = [*2..5]

# 3.times do |n|
#   aaa = [n+2]
#   3.times do |l|
#   aaa.push(aaa[l-1]+aa[l])
#   end
# end



# l = 10000


# for i in 100..999 do
#   for j in 100..999 do
#     aa = i*j
#     if aa.to_s == aa.to_s.reverse
#       l = aa if aa > l
#     end
#   end
# end

# puts l



# 4


# puts (0...1000).map{|i|(i%3 == 0 || i%5 == 0)? i:0}.inject(:+)



#5最小公倍数

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
  puts val
end



# def find_deivisible(max)
#   n = max
#   loop do
#     break if divisible_all?(n, max)
#     N+= 1
#   end
#   n
#   end

#   def divisible_all8




kotae = [*1..100]
puts kotae.inject{|sum, n| sum+n}**2 - kotae.inject(0){|sum, n| sum + n**2}

# その数と一でしか割れない数

#10001ばんのそそう

# count = 1
# a = 0
#   for i in 3..1000000000 do
#     a = 0
#       for j in 2..i-1 do
#         if i%j == 0
#           a += 1
#         break
#         end
#       end
#     if a == 0
#         count = count + 1
#     end
#     puts count
#     if count == 10001
#       puts i
#       break
#     end
#   end


#Largest product in a series Problem 8
# number = "7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450"
# arnum = number.split("")
# thirteen = []
# size = 0
# answer =1
# for i in 0..986 do
#   thirteen = []
#   for j in i..i+12 do
#      thirteen.push(number[j])
#   end
#   size = thirteen.inject{|sum, n | sum.to_i*n.to_i}
#   if size > answer
#     answer = size
#   end
# end

# puts answer



# #特別なピタゴラス三つ組

# a = 0
# for i in 1..500
#   for ij in 1..500
#   a = j**2+i**2
#   if a**0.5
# end

# while


#素数の総和

# answer = 2
# a = 0
# for i in 3..2000000 do
#   a = 0
#   for j in 2..i-1 do
#     if i%2 == 0
#       a += 1
#       break
#     elsif i%j == 0
#       a += 1
#       break
#     end
#   end
#   puts i
#   if a == 0
#     answer = answer + i
#   end
# end
#     puts answer


#11 largest product in grid


grid = [[8,2,22,97,38,15,0,40,0,75,4,5,7,78,52,12,50,77,91,8],
        [49,49,99,40,17,81,18,57,60,87,17,40,98,43,69,48,4,56,62,0],
        [81,49,31,73,55,79,14,29,93,71,40,67,53,88,30,3,49,13,36,65],
        [52,70,95,23,4,60,11,42,69,24,68,56,1,32,56,71,37,2,36,91],
        [22,31,16,71,51,67,63,89,41,92,36,54,22,40,40,28,66,33,13,80],
        [24,47,32,60,99,3,45,2,44,75,33,53,78,36,84,20,35,17,12,50],
        [32,98,81,28,64,23,67,10,26,38,40,67,59,54,70,66,18,38,64,70],
        [67,26,20,68,2,62,12,20,95,63,94,39,63,8,40,91,66,49,94,21],
        [24,55,58,5,66,73,99,26,97,17,78,78,96,83,14,88,34,89,63,72],
        [21,36,23,9,75,0,76,44,20,45,35,14,0,61,33,97,34,31,33,95],
        [78,17,53,28,22,75,31,67,15,94,03,80,4,62,16,14,9,53,56,92],
        [16,39,05,42,96,35,31,47,55,58,88,24,0,17,54,24,36,29,85,57],
        [86,56,0,48,35,71,89,7,5,44,44,37,44,60,21,58,51,54,17,58],
        [19,80,81,68,05,94,47,69,28,73,92,13,86,52,17,77,4,89,55,40],
        [4,52,8,83,97,35,99,16,7,97,57,32,16,26,26,79,33,27,98,66],
        [88,36,68,87,57,62,20,72,3,46,33,67,46,55,12,32,63,93,53,69],
        [4,42,16,73,38,25,39,11,24,94,72,18,8,46,29,32,40,62,76,36],
        [20,69,36,41,72,30,23,88,34,62,99,69,82,67,59,85,74,4,36,16],
        [20,73,35,29,78,31,90,1,74,31,49,71,48,86,81,16,23,57,5,54],
        [1,70,54,71,83,51,54,69,16,92,33,48,61,43,52,01,89,19,67,48]]


for i in 
