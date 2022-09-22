class List < ApplicationRecord
  validates :name, uniqueness: true

  belongs_to :user
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
end
