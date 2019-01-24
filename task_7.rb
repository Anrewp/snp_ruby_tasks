# Разработайте метод combine_anagrams(words_array),
# который принимает на вход массив слов
# и разбивает их в группы по анаграммам,
# регистр букв не имеет значения при определении анаграмм.

def combine_anagrams(words_array)
  str = words_array.join(' ')
  str.downcase!

  tmp = []
  words_array.each do |word|
    unless tmp.join(' ') =~ /[#{word}]{#{word.length}}/
      tmp.push(str.scan(/[#{word}]{#{word.length}}/))
    end
  end

  tmp
end

# TESTS

# test_arr =
# [["cars", "racs", "scar"], ["for"], ["potatoes"], ["four"],  ["creams", "scream"]]
#
# if combine_anagrams(%w[cars for potatoes racs four scar creams scream]) == test_arr
# puts "true"
# else puts "   FALSE 1"
# end
