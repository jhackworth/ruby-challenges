def ordinal(n)
  i = n % 10
  if n == 11 || n == 12 || n == 13
    puts "That's the #{n}th item!"
  elsif i == 1
    puts "That's the #{n}st item!"
  elsif i == 2
    puts "That's the #{n}nd item!"
  elsif i == 3
    puts "That's the #{n}rd item!"
  else
    puts "That's the #{n}th item!"
  end
end

print "Enter a number: "
num = gets.chomp.to_i

ordinal(num)