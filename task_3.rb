# Дан массив элементов произвольной природы.
# Необходимо разработать метод max_odd(array),
# который определит максимальный нечетный элемент.
# Вернуть nil,если таких элементов нет в переданном массиве.

def max_odd(array)
  tmp = []

  array.each do |elem|
    tmp.push(elem) if elem.is_a?(Numeric) && elem.to_i == elem && elem.to_i.odd?
  end

  return nil if tmp.empty?

  tmp.max
end

# TESTS

# #1
# if max_odd([1, 2, 3, 4, 4]) == 3
#   puts "true"
# else puts "   FALSE 1"
# end
# #2
# if max_odd([21.0, 23.3, 25.5, 27.9, 2, 3, 4, 4]) == 21
#   puts "true"
# else puts "   FALSE 2"
# end
# #3
# if max_odd(['ololo', 2, 3, 3.7, 4, [1, 2], nil]) == 3
#   puts "true"
# else puts "   FALSE 3"
# end
# #4
# if max_odd(%w[ololo fufufu]) == nil
#   puts "true"
# else puts "   FALSE 4"
# end
# #5
# if max_odd([2, 2, 4]) == nil
#   puts "true"
# else puts "   FALSE 5"
# end
