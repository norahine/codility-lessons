def solution(a)
  sum = 0
  add_sum = 0

  a.each do |i|
    if i == 0
      add_sum += 1
    elsif i == 1
      sum += add_sum
    end
  end

  if sum > 1_000_000_000
    return -1
  else
    return sum
  end
end

puts solution([0, 1, 0, 1, 1])
