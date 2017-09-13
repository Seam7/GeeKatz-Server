class User < ApplicationRecord
  has_secure_password
  validates_presence_of :email, :password_digest
  validates_uniqueness_of :email
  has_many :uploads, :class_name => 'Kat'
  has_and_belongs_to_many :favs, :join_table => 'kats_users', :class_name => 'Kat'
end
