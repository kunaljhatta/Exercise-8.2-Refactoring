class Poker
  def initialize(players)
    @players = players
    @hands = []
    players.length().times { |x| @hands.append(nil) }
  end

  def play_poker()
    puts "Players in the poker game:"
    @players.length().times { |i| puts "#{self.get_player_name(i)}: #{self.get_player_hand(i)}" }
    # [pretend there's code here]
  end

  def get_results()
    return "[pretend these are poker results]"
  end

  def get_player_name(i)
    return @players[i]
  end

  def get_player_hand(i)
    return @hands[i]
  end
end

class Chess
  def initialize(players)
    @players = players
  end

  def play_game()
    puts "Players in the chess game:"
    @players.length().times { |x| puts "#{self.get_player_name(x)}: #{@players[x][1]}" }
    # [pretend there's code here]
  end

  def get_results()
    return "[pretend these are chess results]"
  end

  def get_player_name(i)
    @players[i][0]
  end
end

class GoPlayer
  attr_reader :name, :color

  def initialize(name, color)
    @name = name
    @color = color
  end
end

class Go
  def initialize(players)
    @players = []
    players.each { |x, y| @players.append(GoPlayer.new(x, y)) }
  end

  def play()
    puts "Players in the go game:"
    @players.each { |player| puts "#{player.name}: #{player.color}" }
    # [pretend there's code here]
  end

  def get_score()
    return "[pretend these are go results]"
  end
end

class PlayGames

  def initialize(game_number, player_list)
    @player_list = player_list
    @game_number = game_number
  end

  def play()
    case @game_number
    when 1
      poker = Poker.new(@player_list)
      poker.play_poker()
      puts poker.get_results()
    when 2
      chess = Chess.new(@player_list)
      chess.play_game()
      puts chess.get_results()
    when 3
      go = Go.new(@player_list)
      go.play()
      puts go.get_score()
    end
  end
end

pg = PlayGames.new(1, ["alice", "bob", "chris", "dave"])
pg.play()

puts

pg = PlayGames.new(2, [["alice", "white"], ["bob", "black"]])
pg.play()

puts

pg = PlayGames.new(3, [["alice", "white"], ["bob", "black"]])
pg.play()

