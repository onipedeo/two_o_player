class Player
  attr_accessor :name, :life

  def initialize(name)
    @name = name
    @life = 3
  end

  def decrease_life
    @life -= 1
  end

  def name=(name)
    @name = name
  end

end