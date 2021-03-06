# Реализуйте класс Dessert c геттерами и сеттерами
# для полей класса name и calories, конструктором,
# принимающим на вход name и calories,
# а также двумя методами healthy?
# (возвращает true при условии калорийности десерта менее 200)
# и delicious? (возвращает true для всех десертов).

class Dessert
  attr_accessor :name, :calories

  def initialize(name, calories)
    self.name     = name
    self.calories = calories
  end

  def healthy?
    calories < 200
  end

  def delicious?
    true
  end
end

# TESTS

# lollypop  = Dessert.new("lollypop", 150)
# puts lollypop.name
# puts lollypop.calories
# puts lollypop.healthy?
# puts lollypop.delicious?
