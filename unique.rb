def unique(array)
  puts array.uniq.inspect
end

def unique2(array)
  uArray = []
  array.each do |a|
    if !uArray.include?(a)
      uArray << a
    end
  end
  puts uArray.inspect
end

test = [1,2,3,2,1,6,9]

unique(test)
unique2(test)