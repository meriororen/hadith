class Chapter < ActiveRecord::Base
  attr_accessible :title
  has_many :hadits, :dependent => :destroy
  belongs_to :book
end
