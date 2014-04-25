require_relative 'action'

class AttackAction
  include Actionable
  
  def action_attributes
    @attributes = :strength
    @difficulty = :toughness    
  end

  def success(target)
    target.kill
    owner.gain_exp
    owner.gain_gold
  end

  def failure(target)
    owner.damage(target.damage)
  end
end