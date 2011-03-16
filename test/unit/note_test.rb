require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  test "mass assignment" do
    # src & lang are the only ones allowed to be assigned
    note = Note.new(:user_id => 100, :code_id => 'value', :html => 'value')

    assert_nil note.user_id, 'user_id was mass assigned'
    assert_nil note.code_id, 'code_id was mass assigned'
    assert_nil note.html,    'html was mass assigned'
  end
end
