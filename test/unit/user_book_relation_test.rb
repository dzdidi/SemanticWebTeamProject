require 'test_helper'

class UserBookRelationTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert UserBookRelation.new.valid?
  end
end
