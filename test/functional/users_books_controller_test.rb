require 'test_helper'

class UsersBooksControllerTest < ActionController::TestCase
  def test_create_invalid
    UsersBooks.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    UsersBooks.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to root_url
  end

  def test_destroy
    users_books = UsersBooks.first
    delete :destroy, :id => users_books
    assert_redirected_to root_url
    assert !UsersBooks.exists?(users_books.id)
  end
end
