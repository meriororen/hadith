class Hadit < ActiveRecord::Base
  attr_accessible :matan, :chapter_id, :section_id, :hdnum
  belongs_to :chapter
  belongs_to :section
end
