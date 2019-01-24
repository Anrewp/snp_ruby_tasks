# Адаптируйте ваше решение из Упражнения 1 так, чтобы вместо palindrome?("foo")
# вы могли его использовать как "foo".palindrome? # => false.

class String
  def palindrome?
    return false if nil?

    str = downcase.scan(/\w/)
    return true if str == str.reverse

    false
  end
end

# TESTS

# puts "foo".palindrome?
# puts "OOo".palindrome?
# puts "333".palindrome?
# puts "Madam, I'm Adam!".palindrome?
