class Year < ActiveRecord::Base
  extend FriendlyId
    friendly_id :year, use: [:slugged]

    def should_generate_new_friendly_id?
      slug.blank? || year_changed?
    end

  has_and_belongs_to_many :books
  has_many :notes
end
