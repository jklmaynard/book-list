class Book < ActiveRecord::Base
  extend FriendlyId
    friendly_id :title, use: [:slugged]

    def should_generate_new_friendly_id?
      slug.blank? || title_changed?
    end
  has_and_belongs_to_many :years
  has_many :notes
end
