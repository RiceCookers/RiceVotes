class Item < ApplicationRecord
  has_many :votes
  has_many :users, through: :votes

  mount_uploader :image, ImageUploader
end
