class Link < ActiveRecord::Base
  include ActiveModel::Validations
  
  attr_protected :note_id
  belongs_to :note
  has_one :code, :through => :note
  
  validates :start_line, :end_line, :presence => true, :numericality => true
  
  validate do |link|
    link.must_end_after_start
  end
  
  protected
  
  def must_end_after_start
    if end_line.to_i < start_line.to_i
      errors['end_line'] = 'can\'t be before the start line'
    end
  end
  
  def must_end_before
    if end_line.to_i < code.line_count
      errors['end_line'] = 'END BEFORE'
    end
  end
  
end

