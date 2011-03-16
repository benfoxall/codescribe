require 'test_helper'

class CodesControllerTest < ActionController::TestCase
  
  setup do
    @code = codes(:one)
  end
  
  test "should get new" do
    get :new
    assert_response :success
  end
  
  test "should create" do
    assert_difference('Code.count') do
      post :create, :step_list => @code.attributes
    end
    
    assert_redirected_to code_path(assigns(:code))
  end
  
  test "should get show" do
    get :show, :id => @code.to_param
    assert_response :success
  end

end
