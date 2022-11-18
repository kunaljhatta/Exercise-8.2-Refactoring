class Poker
  # Added these two attr_accessors to remove the 
  # get_player_name(i) and get_player_hand(i) explicit functions
  attr_accessor :players, :hands

  def initialize(players)
    @players = players
    @hands = []
    players.length().times { |x| @hands.append(nil) }
  end
  
  # changed play_poker() to play() method
  def play()
    puts "Players in the poker game:"
    # Used zip to print player and hand without the explicit two function 
    # calls inside the .times loop 
    players.zip(hands).each {|player, hand| puts "#{player}: #{hand}" }    
    # [pretend there's code here]
  end

  def get_results()
    return "[pretend these are poker results]"
  end

end

class Chess
  # added attr_reader players and removed get_player_name(i) function
  attr_reader :players
  def initialize(players)
    @players = players
  end
  
  # changed play_game() to play() method 
  def play()
    puts "Players in the chess game:"
    
    # replaced .times with .map and removed function calls inside the body
    @players.map { |player| puts "#{player[0]}: #{player[1]}" }
    # [pretend there's code here]
  end

  def get_results()
    return "[pretend these are chess results]"
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
  
  # replaced get_score() with get_results()
  def get_results()
    return "[pretend these are go results]"
  end
end

class PlayGames
  # added these two readers 
  attr_reader :game_number, :player_list

  def initialize(game_number, player_list)
    @player_list = player_list
    @game_number = game_number
  end

  # added this line of code to get the right class running 
  MAP = {1 => Poker, 2 => Chess,3 => Go}
  
  # removed case statement
  def play()
    game = MAP[game_number].new(player_list)
    game.play()
    puts game.get_results()
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

