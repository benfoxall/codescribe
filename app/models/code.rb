class Code < ActiveRecord::Base
  attr_accessible :src, :lang
  belongs_to :user
  has_many :notes
  
  def line_count
    src.lines.count
  end
end
