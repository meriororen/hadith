class Chapter < ActiveRecord::Base
  attr_accessible :title
  has_many :hadits
  belongs_to :book
end
