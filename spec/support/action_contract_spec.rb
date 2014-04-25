shared_examples "actionable" do
  it 'responds to owner' do
    expect(action).to respond_to(:owner)
  end

  it 'responds to dicepool' do
    expect(action).to respond_to(:dicepool)
  end

  it 'responds to attributes' do
    expect(action).to respond_to(:attributes)
  end

  it 'responds to difficulty' do
    expect(action).to respond_to(:difficulty)
  end

  it 'responds to action_attributes' do
    expect(action).to respond_to(:action_attributes)
  end

  it 'responds to success' do
    expect(action).to respond_to(:success)
  end

  it 'responds to failure' do
    expect(action).to respond_to(:failure)
  end
end

shared_examples "action" do
  it "has an owner" do
    expect(action.owner).to eq(hero)
  end
end