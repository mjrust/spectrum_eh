require 'test_helper'

class CalculatorsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Calculator.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Calculator.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to calculators_url
  end

  def test_edit
    get :edit, :id => Calculator.first
    assert_template 'edit'
  end

  def test_update_invalid
    Calculator.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Calculator.first
    assert_template 'edit'
  end

  def test_update_valid
    Calculator.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Calculator.first
    assert_redirected_to calculators_url
  end

  def test_destroy
    calculator = Calculator.first
    delete :destroy, :id => calculator
    assert_redirected_to calculators_url
    assert !Calculator.exists?(calculator.id)
  end
end
