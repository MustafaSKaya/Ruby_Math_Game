class Question

    def initialize
      @number1 = rand(1..100)
      @number2 = rand(1..100)
      @sum = @number1 + @number2
    end
  
    def ask_question(name)
      puts "#{name}: What does #{@number1} plus #{@number2} equal?"
    end
  
    def check_answer?(input)
      @sum == input
    end
    
end