def make_three(n)
	puts ((n + 5) * 2 - 4) / 2 - n
end

print "Enter a number: "
num = gets.chomp.to_i

make_three(num)