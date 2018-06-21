def solution(a)
  a.sort!
  if a[0] != 1 || (a[0] == 2 && a.count == 1) || a.empty?
    return 1
  elsif a[0] == 1 && a.count == 1
    return 2
  else
    a.each_with_index do |element, i|
      if a[i] < a.length && a[0] == 1
        if a[i+1] - a[i] != 1
          return a[i] + 1
        end
      else
        return a.last + 1
      end
    end
  end
end

puts solution([2, 3, 1, 5])
