def solution(a)

  i = 0

  while i < a.length
    # compare the element with the element before and so on until they are even
    # once they are even insert after current
    j = a.length - 1

    while a[i] != a[j] && i != j
      j -= 1
    end

    if i == j
      return a[j]
    else
      a.insert(i+1, a.delete_at(j))
    end

    i += 2
  end
end

A_1 = [9, 3, 9, 3, 9, 7, 9]
puts solution(A_1)

A_2 = [5, 5, 2, 5, 5]
puts solution(A_2)
