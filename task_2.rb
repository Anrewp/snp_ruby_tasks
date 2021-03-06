# Дан массив array и числовой диапазон range.
# Разработайте метод coincidence(array,range)
# для определения элементов из массива array,
#  значения которых входят в указанный диапазон.
#  Если не передан хотя бы один из параметров,
#  то должен вернуться пустой массив.

def coincidence(array = [], range = (0...0))
  
  array.select { |num| range.include?(num) }

end

# TESTS

# #1
# if coincidence([1, 2, 3, 4, 5], (3..5)) == [3, 4, 5]
#   puts "true"
# else puts "   FALSE 1"
# end
# if coincidence([1, 2, 3, 4, 5], ) == []
#   puts "true"
# else puts "   FALSE 5"
# end
# #2
# if coincidence() == []
#   puts "true"
# else puts "   FALSE 2"
# end
# #3
# if coincidence([nil, 1, 'foo', 4, 2, 2.5], (1..3)) == [1, 2, 2.5]
#   puts "true"
# else puts "   FALSE 3"
# end
