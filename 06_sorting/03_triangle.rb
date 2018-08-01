def solution(a)
  a.sort!

  a.each_cons(3) do |p, q, r|
    if p + q > r
      return 1
    end
  end
  return 0
end

puts solution([10, 2, 5, 1, 8, 20])
puts solution([10, 50, 5, 1])
