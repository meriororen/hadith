class Hadit < ActiveRecord::Base
  attr_accessible :book, :matan, :chapter_id
  belongs_to :chapter
end
