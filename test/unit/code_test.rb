require 'test_helper'

class CodeTest < ActiveSupport::TestCase

  test "mass assignment" do
    # src & lang are the only ones allowed to be assigned
    code = Code.new(:user_id => 100, :hash => 'value', :html => 'value')

    assert_nil code.user_id, 'user_id was mass assigned'
    assert_nil code.hash,    'hash was mass assigned'
    assert_nil code.html,    'html was mass assigned'
  end

end
