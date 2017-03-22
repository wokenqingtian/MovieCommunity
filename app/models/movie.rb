class Movie < ApplicationRecord
  belongs_to :user
  has_many :reviews
  validates :title, presence: true
  
  has_many :movie_relationships
  has_many :followers, through: :movie_relationships, source: :user
end
