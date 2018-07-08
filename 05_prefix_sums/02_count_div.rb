def solution(a, b, k)
  if a % k == 0
    result = ((b - a) / k) + 1
  else
    result = (b / k - (( a / k) + 1)) + 1
  end

  return result
end

puts solution(6, 11, 2)
puts solution(1, 36, 36)
puts solution(0, 40, 1)
puts solution(19, 19, 39)
puts solution(19, 19, 1)
