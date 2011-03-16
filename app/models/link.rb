class Link < ActiveRecord::Base
  attr_protected :note_id
  belongs_to :note
end
