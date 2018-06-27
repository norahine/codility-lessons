def solution(x, a)
  river = Array.new(a.length+1, 0)

  a.each_with_index do |position, i|
    if (river[position] == 0)
      river[position] = 1
      x -= 1
    end

    if x == 0
      return i
    end
  end

  return -1
end

puts solution(5, [1, 3, 1, 4, 2, 3, 5, 4])
puts solution(1, [1])
puts solution(5, [1, 2, 3])
