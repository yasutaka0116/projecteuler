













require ('./p022_names.rb')

score = 0
count = 0
alpha = [*'A'..'Z']

@names.sort!

for i in (0..@names.length-1)  do
  count = 0
    @names[i].split("").each do |j|
      count += alpha.index(j)+1
    end
  score += count*(i+1)
end

puts score
