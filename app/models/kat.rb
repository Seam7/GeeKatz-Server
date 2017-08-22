class Kat < ApplicationRecord
  after_initialize :set_defaults, unless: :persisted?
  validates :img, presence: true

  def set_defaults
    self.upvote = 0
    self.downvote = 0
  end
end
