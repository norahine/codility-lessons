def solution(a)
  min_avg = (a[0] + a[1]).to_f / 2
  starting_point = 0

  if a.length == 2
    return starting_point
  end

  (2...a.length).each do |i|

    avg_1 = (a[i-1] + a[i]) / 2.0
    avg_2 = (a[i-2] + a[i-1] + a[i]) / 3.0

    if (avg_1 < min_avg)
      starting_point = i - 1
      min_avg = avg_1
    end

    if (avg_2 < min_avg)
      starting_point = i - 2
      min_avg = avg_2
    end

  end

  return starting_point
end

puts solution([4, 2, 2, 5, 1, 5, 8])
puts solution([0, 0])
puts solution([1, 1, 1, 9])
puts solution([9, 8, 1, 2])
puts solution([4, 2, 2, 5, 1, 5, 8])
