require 'test_helper'

class BodyMassesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => BodyMass.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    BodyMass.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    BodyMass.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to body_mass_url(assigns(:body_mass))
  end

  def test_edit
    get :edit, :id => BodyMass.first
    assert_template 'edit'
  end

  def test_update_invalid
    BodyMass.any_instance.stubs(:valid?).returns(false)
    put :update, :id => BodyMass.first
    assert_template 'edit'
  end

  def test_update_valid
    BodyMass.any_instance.stubs(:valid?).returns(true)
    put :update, :id => BodyMass.first
    assert_redirected_to body_mass_url(assigns(:body_mass))
  end

  def test_destroy
    body_mass = BodyMass.first
    delete :destroy, :id => body_mass
    assert_redirected_to body_masses_url
    assert !BodyMass.exists?(body_mass.id)
  end
end
