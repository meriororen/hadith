class Hadit < ActiveRecord::Base
  attr_accessible :matan, :chapter_id
  belongs_to :chapter
end
