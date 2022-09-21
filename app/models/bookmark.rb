class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: :list }
end
