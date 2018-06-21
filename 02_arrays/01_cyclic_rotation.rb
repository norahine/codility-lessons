def solution(a, k)
  k.times do
    last_element = a.pop
    a = a.unshift(last_element)
  end

  return a
end

A_1 = [3, 8, 9, 7, 6]
K_1 = 3
puts solution(A_1, K_1).inspect

A_2 = [1, 2, 3, 4]
K_2 = 4
puts solution(A_2, K_2).inspect
