require 'rails_helper'

RSpec.describe Kat, type: :model do
  it 'is invalid without a title' do
    kat = Kat.new
    expect(kat).to be_invalid
  end

  it 'is valid with a title' do
    kat = Kat.new(title: 'Ewok')
    expect(kat).to be_valid
  end

  it 'has 0 upvotes' do
    kat = Kat.new
    expect(kat.upvotes).to be === 0
  end

  it 'has 0 downvotes' do
    kat = Kat.new
    expect(kat.downvotes).to be === 0
  end
end
