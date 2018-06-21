def solution(a)
  b = Array.new(a.length + 1, false)

  a.each do |n|
   if n > 0 && n <= a.length
     b[n - 1] = true
   end
  end

  b.each_with_index do |exist, i|
    if exist == false
      return i + 1
    end
  end
end

puts solution([1, 3, 6, 4, 1, 2])
puts solution([1, 2, 3])
puts solution([-1, -3])
