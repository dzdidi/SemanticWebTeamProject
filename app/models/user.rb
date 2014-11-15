class User < ActiveRecord::Base
  attr_accessible :user_id, :login_id, :login_pwd, :name
  
  has_many :friendships
  has_many :friends, :through => :friendships
  #has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  #has_many :inverse_friends, :through => :inverse_friendships, :source => :user
  
  has_many :user_book_relation
end
