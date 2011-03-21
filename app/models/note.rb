class Note < ActiveRecord::Base
  attr_accessible :src, :links_attributes
  belongs_to :user
  belongs_to :code
  has_many :links
  
  accepts_nested_attributes_for :links
  
end
