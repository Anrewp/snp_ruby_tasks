# Разработать методы для программы Камень-Ножницы-Бумага.
# Метод rps_game_winner должен принимать на вход массив следующей структуры
# [ ["player1", "P"], ["player2", "S"] ],
# где P - бумага, S - ножницы, R - камень,
# и функционировать следующим образом:
#
# • если количество игроков больше 2 необходимо вызывать исключение
# WrongNumberOfPlayersError;
# • если ход игроков отличается от ‘R’, ‘P’ или ‘S’ необходимо вызывать
# исключение NoSuchStrategyError;
# • в иных случаях необходимо вернуть имя и ход победителя, если оба
# игрока походили одинаково - выигрывает первый игрок.

# Cheking plyer strategy
def rps_game_check(player)
  str = player.join(' ')
  raise NameError unless /player\s*\d+\s+[RPS]/.match?(str)
end

begin
  # Takes two args and returns winner
  def rps_game_winner(*players)
    raise ArgumentError unless players.length == 2

    players.each { |player| rps_game_check(player) }

    strategy = []
    players.each { |player| strategy.push(player[1]) }

    case strategy.join
    when /RR|SS|PP|PR|RS|SP/
      players[0].join(' ')
    else players[1].join(' ')
    end

  rescue ArgumentError
    'WrongNumberOfPlayersError'
  rescue NameError
    'NoSuchStrategyError'
  end
end

# TESTS

# if rps_game_winner(%w[player1 P], %w[player2 S], %w[player3 S]) ==
#   "WrongNumberOfPlayersError"
#   puts "true"
# else puts "   FALSE 1"
# end
# if rps_game_winner(%w[player1 P], %w[player2 A]) == "NoSuchStrategyError"
#   puts "true"
# else puts "   FALSE 2"
# end
# if rps_game_winner(%w[player1 P], %w[player2 S]) == 'player2 S'
#   puts "true"
# else puts "   FALSE 3"
# end
# if rps_game_winner(%w[player1 P], %w[player2 P]) == 'player1 P'
#   puts "true"
# else puts "   FALSE 4"
# end
