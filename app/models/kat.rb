class Kat < ApplicationRecord
  after_initialize :set_defaults, unless: :persisted?
  validates :title, presence: true
  belongs_to :uploader, :class_name => "User", :foreign_key => 'user_id'
  has_and_belongs_to_many :favored_by, :join_table => 'kats_users', :class_name => 'User'

  mount_uploader :img, ImageUploader

  def set_defaults
    self.upvotes = 0
    self.downvotes = 0
  end
end
