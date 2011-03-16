require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  test "mass assignment" do
    # src & lang are the only ones allowed to be assigned
    link = Link.new(:note_id => 100, :start_line => 10, :end_line => 20)

    assert_nil link.note_id, 'note_id was mass assigned'
  end
end
