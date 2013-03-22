class Chapter < ActiveRecord::Base
  attr_accessible :title, :chnum, :tgtnum
  has_many :hadits, dependent: :destroy
  has_many :sections, dependent: :destroy
  belongs_to :book
end
