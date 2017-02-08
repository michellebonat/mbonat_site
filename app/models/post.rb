class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :permalink, use: [:slugged, :history]
  validates :permalink, presence: true, uniqueness: true
end
