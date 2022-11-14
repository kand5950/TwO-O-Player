class Player
  attr_accessor :name, :lives

  def initialize(n)
    @name = n
    @lives = 3
  end

  def greeting
    "Welcome #{name}"
  end

  def loss
    self.lives -= 1
  end

  def over
    self.lives == 0
  end

end