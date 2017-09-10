class Artist < ApplicationRecord
  has_many :songs
  has_one :photo

  validates :name, presence: true
end
