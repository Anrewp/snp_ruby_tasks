# Разработайте функцию count_words(string),
# которая будет возвращать хэш со статистикой частоты
# употребления входящих в неё слов.

def count_words(string)
  arr_words = string.downcase.scan(/\w+/)

  arr_words.inject(Hash.new(0)) { |hash, word| hash[word] += 1; hash }
end

# TESTS

# if count_words("A man, a plan, a canal -- Panama") ==
#    { 'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1 }
#   puts "true"
# else puts "   FALSE 1"
# end
# if count_words("Doo bee doo bee doo") == { 'doo' => 3, 'bee' => 2 }
#   puts "true"
# else puts "   FALSE 2"
# end
