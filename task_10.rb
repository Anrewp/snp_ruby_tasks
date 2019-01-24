# Разработайте функцию count_words(string),
# которая будет возвращать хэш со статистикой частоты
# употребления входящих в неё слов.

def count_words(string)
  result_hash = {}
  arr_words = string.downcase.scan(/\w+/)

  arr_words.each do |word|
    next if result_hash.member?(word)

    i = 0
    count = 0

    while i <= arr_words.length
      count += 1 if arr_words[i].eql?(word)
      i += 1
    end

    result_hash[word] = count
  end

  result_hash
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
