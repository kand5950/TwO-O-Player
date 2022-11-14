class Question
  def initialize
    @num1 = rand(0..20)
    @num2 = rand(0..20)
  end

  def question
    "What does #{@num1} plus #{@num2} equal?" 
  end

  def answer
    @num1 + @num2
  end
end