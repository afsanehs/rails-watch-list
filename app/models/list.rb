class List < ActiveRecord::Base
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
  validates :name, presence: true
  validates :name, uniqueness: true
  # should destroy child saved movies when destroying self
end
