# Разработать метод date_in_future(integer),
# который вернет дату через integer дней.
# Если integer не является целым числом,
# то метод должен вывести текущую дату.
# Формат возвращаемой методом даты должен иметь следующий вид
# '01-01-2001 22:33:44’.
require 'active_support/time'

def date_in_future2(integer = 0)
  time = DateTime.now

  if integer.is_a?(Integer)
    return (time + integer.days).strftime('%d-%m-%Y %H:%M:%S')
  else
    return time.strftime('%d-%m-%Y %H:%M:%S')
  end

end

# TESTS

# puts date_in_future2(2.2)
# puts date_in_future2(5)
# puts date_in_future2([])
