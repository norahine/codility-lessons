def solution(n)
  binary_representation = divide_by_two(n)

  longest_gap_length = 0
  gap_length = 0

  binary_representation.each_char do |char|
    if char == "1"
      if gap_length > longest_gap_length
        longest_gap_length = gap_length
      end
      gap_length = 0
    else
      gap_length += 1
    end
  end

  return longest_gap_length
end

# algorithm that converts an integer into a
# binary string representation
def divide_by_two(n)
  binary_digits = []
  num = n

  while num > 0
    result = num / 2
    remainder = num % 2

    binary_digits.push(remainder)
    num = result
  end

  # convert array to a string
  binary_digits.reverse.join
end

puts solution(ARGV[0].to_i)
