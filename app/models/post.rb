class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history, :finders]
  # validates :title, presence: true, uniqueness: true

  def should_generate_new_friendly_id?
    slug.blank? || title_changed?
  end
end
