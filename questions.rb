class Questions

  attr_accessor :correct

  def initialize(current_player)
    @num_x = rand(20)
    @num_y = rand(20)
    @answer = @num_x + @num_y

    puts "#{current_player}: What does #{@num_x} plus #{@num_y} equal?"
    ask_question
  end

  def ask_question
    @player_answer = gets.chomp
    if @player_answer == @answer.to_s

      puts "That's right!"
      @correct = true
    else

      puts "That's wrong!"
      @correct = false
    end
  end

end