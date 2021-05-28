class Bookmark < ActiveRecord::Base
  belongs_to :list
  belongs_to :movie
  # is unique for a given movie/list couple - could be the other way as well
  validates :movie, uniqueness: { scope: :list }
  # comment cannot be shorter than 6 characters
  validates :comment, length: { minimum: 6 }
end
