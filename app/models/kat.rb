class Kat < ApplicationRecord
  after_initialize :set_defaults, unless: :persisted?
  validates :title, presence: true

  mount_uploader :img, ImageUploader

  def set_defaults
    self.upvotes = 0
    self.downvotes = 0
  end
end
