class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  

  # validates :movie, :list, presence: true
  # validates_length_of :comment, minimum: 6

  validates :comment, presence: true, length: { minimum: 6 }
  validates_presence_of :movie, :list
  validates_uniqueness_of :movie_id, scope: :list_id
end
