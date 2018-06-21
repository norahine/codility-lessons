def solution(n, a)
  counters = Array.new(n, 0)

  max_value = 0

  a.each do |x|
    if x >= 1 && x <= n
      counters[x-1] += 1

      if counters[x-1] > max_value
        max_value = counters[x-1]
      end
    elsif x == n + 1
      counters = Array.new(n, max_value)
    end
  end

  return counters
end

puts solution(5, [3,4,4,6,1,4,4])
