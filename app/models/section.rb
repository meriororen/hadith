class Section < ActiveRecord::Base
  attr_accessible :chapter_id, :title, :scnum
  belongs_to :chapter
  has_many :hadits
end
