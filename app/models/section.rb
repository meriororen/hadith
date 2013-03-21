class Section < ActiveRecord::Base
  attr_accessible :chapter_id, :title
  belongs_to :chapter
  has_many :hadits
end
