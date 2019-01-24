# Создайте класс JellyBean,
# расширяющий класс Dessert (из Упражнения 11)
# новыми геттерами и сеттерами для атрибута flavor.
# Измените метод delicious? таким образом,
# чтобы он возвращал false только в тех случаях,
# когда flavor равняется «black licorice».

require_relative 'task_11.rb'

class JellyBean < Dessert
  attr_accessor :flavor

  def initialize(name, calories, flavor)
    @flavor = flavor
    super(name, calories)
  end

  def delicious?
    @flavor != 'black licorice'
  end
end

# TESTS

# bob = JellyBean.new("Cake", 450, "black licorice")
# puts bob.delicious?
# bob.flavor = "asf"
# puts bob.delicious?
# puts bob.name
# puts bob.healthy?
