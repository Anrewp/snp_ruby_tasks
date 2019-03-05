# Разработайте метод palindrome?(string),
# который будет определять, является ли
# строка string палиндром
# (строкой, которая читается одинаково как с начала
# так и с конца), при условии игнорирования
# пробелов, знаков препинания и регистра.

def palindrome?(string)
  return false if string.nil?

  str = string.to_s.downcase.scan(/\w/)
  str == str.reverse

end

# TESTS

# puts palindrome?("A man, a plan, a canal -- Panama")
# puts palindrome?("Madam, I'm Adam!")
# puts palindrome?(333)
# puts palindrome?(nil)
# puts palindrome?("Abracadabra")
