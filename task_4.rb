# Дан массив целых чисел.
# Необходимо разработать метод sort_array(array),
# который поменяет местами минимальные и максимальные элементы массива
# , а также добавит в конец массива одно минимальное значение из него.

def sort_array(array)
  return array if array.empty?

  min = array.min
  max = array.max
  tmp = []

  array.each do |num|
    if num == min
      tmp.push(max)
    elsif num == max
      tmp.push(min)
    else tmp.push(num)
    end
  end

  tmp.push(min)
  tmp
end

# TESTS

# #1
# if sort_array([]) == []
#   puts "true"
# else puts "   FALSE 1"
# end
# #2
# if sort_array([2, 4, 6, 8]) == [8, 4, 6, 2, 2]
#   puts "true"
# else puts "   FALSE 2"
# end
# #3
# if sort_array([1]) == [1, 1]
#   puts "true"
# else puts "   FALSE 3"
# end
# #4
# if sort_array([1, 2, 1, 3]) == [3, 2, 3, 1, 1]
#   puts "true"
# else puts "   FALSE 4"
# end
