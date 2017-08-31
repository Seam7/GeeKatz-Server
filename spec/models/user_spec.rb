require 'rails_helper'

RSpec.describe User, type: :model do
  pending 'm:m relationship with katz throuhg Fav model'
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
end
