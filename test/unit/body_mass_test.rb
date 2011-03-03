require 'test_helper'

class BodyMassTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert BodyMass.new.valid?
  end
end
