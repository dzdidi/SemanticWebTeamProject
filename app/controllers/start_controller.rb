class StartController < ApplicationController
  def search
  	if !params[:search].nil?
    	book = params[:search][:book]
    end
    if !book.nil?
    	p "response"
        p Book.obtain(book)
      
      #redirect to book show method
    end

  end
end
