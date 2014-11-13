require 'test_helper'

class UserBookRelationsControllerTest < ActionController::TestCase
  def test_create_invalid
    UserBookRelation.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    UserBookRelation.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to root_url
  end

  def test_destroy
    user_book_relation = UserBookRelation.first
    delete :destroy, :id => user_book_relation
    assert_redirected_to root_url
    assert !UserBookRelation.exists?(user_book_relation.id)
  end
end
