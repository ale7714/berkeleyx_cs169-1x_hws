class RockPaperScissors
  STRATEGY = ['R','P','S']
  BEATS = [['R','S'],['S','P'],['P','R']]
  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    if STRATEGY.include? player1[1] and STRATEGY.include? player2[1]
        return player1 if player1[1] == player2[1] or BEATS.include? [player1[1],player2[1]]
        player2
    else 
	raise NoSuchStrategyError, "Strategy must be one of R,P,S"  
    end
  end

  def self.tournament_winner(tournament)
    return self.winner(*tournament) if tournament[0][0].is_a? String
    tournament_winner(tournament.map { |t| tournament_winner(t)})
  end

end
