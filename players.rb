class Player
  attr_reader :name, :life

  def initialize(name)
    @name = name
    @life = 3
  end

  def lost_life
    @life -= 1
  end

  def game_over?
    @life == 0
  end

end