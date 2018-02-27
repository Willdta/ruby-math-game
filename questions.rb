class Questions
  attr_accessor :answer, :question

  def initialize
    @first_number = 1 + rand(10)
    @second_number = 1 + rand(10)
    @answer = @first_number + @second_number
    @question = "What is #{@first_number} + #{@second_number}?"
  end
end
