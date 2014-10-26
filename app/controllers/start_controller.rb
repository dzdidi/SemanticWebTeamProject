class StartController < ApplicationController
  def search
    book = params[:search][:book]
    if !book.nil?
      p book
      #path book to search method
      #redirect to book show method
    end
  end
end
