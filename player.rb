class Player
  attr_accessor :name, :life, :initial_life
  INITIAL_LIVES = 3

  def initialize(name)
    @name = name
    @life = INITIAL_LIVES
    @initial_life = INITIAL_LIVES
  end

  def decrease_life
    @life -= 1
  end

  def name=(name)
    @name = name
  end

end