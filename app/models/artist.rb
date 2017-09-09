class Artist < ApplicationRecord
  has_many :songs

  validates :name, presence: true
  validates :image_url, presence: true
end
