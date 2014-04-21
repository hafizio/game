class Monster
  attr_reader :toughness, :damage, :notice, :gold, :exp

  def initialize(attr = {})
    @toughness = attr.fetch(:toughness, 2) #all the integers parameters are default. refer Hash#fetch
    @damage = attr.fetch(:damage, 2)
    @notice = attr.fetch(:notice, 2)
    @gold = attr.fetch(:gold, 10)
    @exp = attr.fetch(:exp, 20)

    @dead = false
  end

  def dead?
    @dead
  end

  def kill
    @dead = true
  end
end
