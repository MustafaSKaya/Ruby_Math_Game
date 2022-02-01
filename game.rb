class Game

    def initialize(name)
      @name = name
      @player_1 = Player.new('Player 1')
      @player_2 = Player.new('Player 2')
    end
  
    def begin
      puts " Welcome to our Math game #{@player_1.name} and #{@player_2.name}.\n Game is simple.\n You will be asked several math question\n and if you answer them wrong you will lose one point.\n Whoever has the more point at the end, wins."
      turn
    end

    def turn
        @player_1.new_question
        check_score
        scoreboard
        puts '----- NEW TURN -----'
        @player_2.new_question
        check_score
        scoreboard
        puts '----- NEW TURN -----'
        turn
    end
  
    def scoreboard
      puts "P1: #{@player_1.points}/3 vs P2: #{@player_2.points}/3"
    end
  
    def check_score
        if @player_1.disqualified?
            is_winner?(@player_2)
        elsif @player_2.disqualified?
            is_winner?(@player_1)
        end
    end
    
    def is_winner?(player)
      puts "#{player.name} wins with the score of #{player.points}/3"
      puts '----- GAME OVER -----'
      puts 'Good bye!'
      exit(0)
    end

end
