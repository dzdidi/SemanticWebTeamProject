class StartController < ApplicationController
  def search
  	if !params[:search].nil?
    	book = params[:search][:book]
    end
    if !book.nil?
    	Book.search_friends_books#(book)
      
      #redirect to book show method
    end

  end

  def get_token_and_uid
    $uid = params[:uid]
    $token = params[:token]
    $login = true
  end
end
