def solution(a)
  if a.length == 3
    max_product = a.all.inject(:*)
  else
    first_max = a.max
    a.delete(first_max)

    if first_max > 0

      minus_values = []
      max_minus = 0

      a.each do |element|
        if element < 0
          minus_values.push(element)
        end
      end

      if minus_values.length >= 2
        max_minus = minus_values.min(2).inject(:*)
      end

      max_plus = a.max(2).inject(:*)

      if max_minus > max_plus
        max_product = first_max * max_minus
      else
        max_product = first_max * max_plus
      end

      max_product

    else
      max_product = first_max * a.max(2).inject(:*)
    end
  end
end

puts solution([-3, 1, 2, -2, 5, 6])
puts solution([-5, 5, -5, 4])
puts solution([4, 5, 1, 0])
puts solution([-5, -6, -4, -7, -10])
