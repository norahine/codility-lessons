def solution(a)
  a.sort!

  n = a.length - 1
  i = 0

  if a.length == 1
    if a[0] == 1
      return 1
    else
      return 0
    end
  elsif a.first != 1
    return 0
  else
    n.times do
      if a[i+1] == a[i] + 1
        i += 1
      else
        return 0
      end
    end

    return 1
  end
end

puts solution([2,1,3,4])
puts solution([1,3,4])
puts solution([1])
puts solution([1,2])
puts solution([2,3,4])
puts solution([3,4,5])
