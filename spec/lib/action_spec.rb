require 'spec_helper'
require_relative '../../lib/action'

class TestAction < Action
  def action_attributes
    @attributes = :strength
    @difficulty = :toughness
  end
end

describe Action do
  let(:hero) { double("hero", strength: 3, gain_exp: nil, gain_gold: nil, damage: nil) } 
  let(:action) { TestAction.new hero, dicepool }
  let(:dicepool) { double("dicepool") } 
  let(:monster) { double("monster", toughness: 2, kill: nil, damage: nil) } 

  it_behaves_like "action"
end