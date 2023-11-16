class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :restrict_with_error
  validates_associated :bookmarks

  validates_uniqueness_of :title
  # validates_presence_of :title, :overview
  validates :title, presence: true
  validates :overview, presence: true
end
