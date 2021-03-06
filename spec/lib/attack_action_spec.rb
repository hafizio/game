require 'spec_helper'
require_relative '../../lib/attack_action'

describe AttackAction do
  let(:hero) { double("hero", strength: 3, gain_exp: nil, gain_gold: nil, damage: nil) } 
  let(:action) { AttackAction.new hero }
  let(:dicepool) { double("dicepool") } 
  let(:monster) { double("monster", toughness: 2, kill: nil, damage: nil) } 

  it_behaves_like "actionable"
  it_behaves_like "action"

  it "has strength attribute" do
    expect(action.attributes).to eq(:strength)
  end

  it "has toughness as difficulty" do
    expect(action.difficulty).to eq(:toughness)
  end

  describe "effect" do
    before :each do
      Dicepool.stub(:new).and_return(dicepool)
    end

    context "success" do
      before :each do
        dicepool.stub(:skill_check).and_return(true)
      end
    
      it "kills monster" do
        monster.should_receive(:kill)
        action.activate(monster)      
      end
      it "rewards owner with exp" do
        hero.should_receive(:gain_exp)    
        action.activate(monster)      
      end

      it "rewards owner with gold" do
        hero.should_receive(:gain_gold)
        action.activate(monster)
      end   
    end

    context "failure" do
      it "damages owner" do
        dicepool.stub(:skill_check).and_return(false)
        hero.should_receive(:damage).with(monster.damage)
        action.activate(monster)        
      end
    end    
  end
end