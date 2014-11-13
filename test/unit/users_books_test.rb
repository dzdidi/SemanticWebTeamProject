require 'test_helper'

class UsersBooksTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert UsersBooks.new.valid?
  end
end
