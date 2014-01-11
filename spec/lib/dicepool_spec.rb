
      dicepool.stub(:roll_die).and_return(2)
      dicepool.stub(:roll_die).and_return(5)
      expect(dicepool.skill_check(3, 2)).to be_false
      expect(dicepool.skill_check(3, 2)).to be_true 
    end
    end
    it "returns false if number of successes is less than difficulty" do
    it "returns true if number of successes is more than difficulty" do
    let(:dicepool) { Dicepool.new } 
  describe "skill_check" do
  end
describe Dicepool do
end
require 'spec_helper'
require_relative '../../lib/dicepool'