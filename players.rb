class Player
    attr_accessor :name, :points

    def initialize(name)
      @name = name
      @points = 3
    end
  
    def take_life
      @points -= 1
    end
  
    def disqualified?
      @points == 0
    end
  
    def new_question
      new_question = Question.new
      new_question.ask_question(name)
      print '> '
      @userchoice = $stdin.gets.chomp
      if new_question.check_answer?(@userchoice.to_i)
        puts 'YES! You are correct.'
      else
        puts 'Seriously? No!'
        take_life
      end
      
    end

end