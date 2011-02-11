require 'test_helper'

class ToolsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Tool.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Tool.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Tool.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to tool_url(assigns(:tool))
  end

  def test_edit
    get :edit, :id => Tool.first
    assert_template 'edit'
  end

  def test_update_invalid
    Tool.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Tool.first
    assert_template 'edit'
  end

  def test_update_valid
    Tool.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Tool.first
    assert_redirected_to tool_url(assigns(:tool))
  end

  def test_destroy
    tool = Tool.first
    delete :destroy, :id => tool
    assert_redirected_to tools_url
    assert !Tool.exists?(tool.id)
  end
end
