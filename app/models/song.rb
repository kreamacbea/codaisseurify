class Song < ApplicationRecord
  belongs_to :artist

  validates :title, presence: true
  validates :length, presence: true
end
