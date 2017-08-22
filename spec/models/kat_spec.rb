require 'rails_helper'

RSpec.describe Kat, type: :model do
  it 'is invalid without an image' do
    kat = Kat.new
    expect(kat).to be_invalid
  end

  it 'has 0 upvotes' do
    kat = Kat.new
    expect(kat.upvote).to be === 0
  end

  it 'has 0 downvotes' do
    kat = Kat.new
    expect(kat.downvote).to be === 0
  end
end
