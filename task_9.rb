# Необходимо разработать метод connect_hashes(hash1, hash2),
# который соединит два переданных хеша,
# значениями ключей в которых являются числа,
# и вернет новый хэш, полученный по следующим правилам:
#
# приоритетными являются ключи того хэша, сумма значений ключей
# которого больше (если суммы значений ключей будут равны, то второй
# хэш считается более приоритетнее)
# • ключи со значениями меньше 10 не должны попасть в финальный хэш
# • получившийся хэш должен вернуться упорядоченным по значениям
# ключей в порядке возрастания.

def connect_hashes(hash1, hash2)
  new_hash = if hash2.values.sum >= hash1.values.sum
               hash1.merge(hash2)    { |_key, _v1, v2| v2 }
             else hash1.merge(hash2) { |_key, v1, _v2| v1 }
             end
  new_hash.reject { |_, v| v < 10 }.sort_by { |_, v| v }.to_h
end

# TESTS

# #1
# if connect_hashes({ a: 2, b: 12 }, { c: 11, e: 5 }) ==
#   { c: 11, b: 12 }
#   puts "true"
# else puts "   FALSE 1"
# end
# #2
# if connect_hashes({ a: 13, b: 9, d: 11 }, { c: 12, a: 15 }) ==
#   { d: 11, c: 12, a: 13 }
# puts "true"
# else puts "   FALSE 2"
# end
# #3
# if connect_hashes({ a: 14, b: 12 }, { c: 11, a: 15 }) ==
#   { c: 11, b: 12, a: 15 }
# puts "true"
# else puts "   FALSE 3"
# end
