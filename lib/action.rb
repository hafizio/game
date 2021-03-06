require_relative 'dicepool'

module Actionable
  attr_reader :owner, :dicepool, :attributes, :difficulty

  def initialize(owner)
    @owner = owner
    @dicepool = Dicepool.new

    action_attributes
  end
  
  #the details differ in the child classes
  def action_attributes
    raise "YOU MUST initialize @attributes and @difficulty"
  end
  
  def activate(target)
    if dicepool.skill_check(owner.send(attributes), target.send(difficulty))
      #dicepool.skill_check(hero.send(:strength), monster.send(:toughness))
      success(target)
    else
      failure(target)
    end
  end

  def success
  end

  def failure
  end
end