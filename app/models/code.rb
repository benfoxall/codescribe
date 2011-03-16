class Code < ActiveRecord::Base
  attr_accessible :src, :lang
  belongs_to :user
  has_many :notes
end
