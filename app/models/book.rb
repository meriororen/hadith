class Book < ActiveRecord::Base
  attr_accessible :author, :title
  has_many :chapters, :dependent => :destroy
end
