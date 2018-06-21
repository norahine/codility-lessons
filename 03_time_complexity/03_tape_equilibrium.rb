def solution(a)
  i = 0
  first_sum = a[0]
  second_sum = a[1]
  total_sum = a.inject(0){ |total_sum, x| total_sum + x }
  result_array = []
  n = a.length - 2

  n.times do
    first_sum = first_sum + a[i+1]
    i = i + 1
    second_sum = total_sum - first_sum
    result_array.push((first_sum - second_sum).abs)
  end

  return result_array.push((a[0] - (total_sum - a[0])).abs).min
end

puts solution([3, 1, 2, 4, 3])
puts solution([5, 6, 2, 4, 1])
