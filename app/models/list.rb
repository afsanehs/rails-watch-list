class List < ActiveRecord::Base
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy
  validates :name, presence: true
  validates :name, uniqueness: true
  has_one_attached :photo
  # should destroy child saved movies when destroying self
end
