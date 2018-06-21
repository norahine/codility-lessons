def solution(x, y, d)
  return ((y - x).to_f/d).ceil
end

puts solution(10, 85, 30)
