class Hero
  attr_reader :strength, :stealth, :health, :actions, :gold, :exp

  def initialize(attr = {})
    @strength = attr.fetch(:strength, 3)
    @stealth = attr.fetch(:stealth, 1)
    @health = attr.fetch(:health, 10)
    @actions = attr.fetch(:actions, {})
    @gold = 0
    @exp = 0

    @fled = false
  end

  def fled?
    @fled
  end

  def flee
    @fled = true
  end

  def activate_action(action_name, target)
    actions[action_name].activate(target)
  end

  def gain_exp(amount)
    @exp += amount
  end

  def gain_gold(amount)
    @gold += amount
  end

  def damage(hit)
    @health -= hit
  end

end