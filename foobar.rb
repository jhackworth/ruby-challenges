print "How high should I count? "
limit = gets.chomp.to_i
n = 1

while n <= limit
    if n % 15 == 0
      puts "foobar"
    elsif n % 5 == 0
      puts "bar"
    elsif n % 3 == 0
      puts "foo"
    else
      puts n
    end
    n += 1
end