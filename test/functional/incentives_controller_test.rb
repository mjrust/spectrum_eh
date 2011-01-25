require 'test_helper'

class IncentivesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Incentive.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Incentive.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Incentive.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to incentive_url(assigns(:incentive))
  end

  def test_edit
    get :edit, :id => Incentive.first
    assert_template 'edit'
  end

  def test_update_invalid
    Incentive.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Incentive.first
    assert_template 'edit'
  end

  def test_update_valid
    Incentive.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Incentive.first
    assert_redirected_to incentive_url(assigns(:incentive))
  end

  def test_destroy
    incentive = Incentive.first
    delete :destroy, :id => incentive
    assert_redirected_to incentives_url
    assert !Incentive.exists?(incentive.id)
  end
end
