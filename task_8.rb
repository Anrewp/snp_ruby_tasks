# Написать метод multiply_numbers(inputs),
# который вернет произведение цифр,
# входящих в inputs.

def multiply_numbers(inputs = 0)

  nums = inputs.to_s.scan(/[1-9]/)
  return nil if nums.empty?

  mult_result = 1
  nums.each { |num|  mult_result *= num.to_i }

  mult_result
end

# TESTS

# #1
#  if multiply_numbers() == nil
#    puts "true"
#  else puts "   FALSE 1"
#  end
#  #2
#  if multiply_numbers("ss") == nil
#    puts "true"
#  else puts "   FALSE 2"
#  end
#  #3
#  if multiply_numbers("1234") == 24
#    puts "true"
#  else puts "   FALSE 3"
#  end
#  #4
#  if multiply_numbers("'sssdd34'") == 12
#    puts "true"
#  else puts "   FALSE 4"
#  end
#  #5
#  if multiply_numbers(2.3) == 6
#    puts "true"
#  else puts "   FALSE 5"
#  end
#  #6
#  if multiply_numbers([5, 6, 4]) == 120
#    puts "true"
#  else puts "   FALSE 6"
#  end
