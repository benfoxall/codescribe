class Note < ActiveRecord::Base
  attr_accessible :src
  belongs_to :user
  belongs_to :code
  has_many :links
end
