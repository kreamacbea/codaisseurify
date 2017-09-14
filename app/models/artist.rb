class Artist < ApplicationRecord
  mount_uploader :image, ImageUploader
  
  has_many :songs, dependent: :destroy
  validates :name, presence: true
end
