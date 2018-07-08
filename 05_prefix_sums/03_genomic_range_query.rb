def solution(s, p, q)
  m = p.length
  solution = []
  i = 0

  m.times do
    range_beggining = p[i]
    range_end =  q[i]
    i += 1

    if (s[range_beggining..range_end].include? "A")
      solution.push(1)
    elsif (s[range_beggining..range_end].include? "C")
      solution.push(2)
    elsif (s[range_beggining..range_end].include? "G")
      solution.push(3)
    else
      solution.push(4)
    end
  end

  return solution
end

puts solution("CAGCCTA", [2, 5, 0], [4, 5, 6])
