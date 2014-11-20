class StartController < ApplicationController
  def search
    if !params[:search].nil?
    	book = params[:search][:book]
    end
    
    if !book.nil?
      case 
        when $uid = "740053999382587"
          luid = User.find_by_loginId("denis123") 
        end
      end

      @book_info = {}
      @book_info.store("facebook", Book.search_facebook(book))
      @book_info.store("dbpedia", Book.search_dbpedia(book))
      @book_info.store("google_link", Book.google_link(book))
      @book_info.store("amazon_link", Book.amazon_link(book))
      @book_info.store("google", Book.search_google(book))
      @book_info.store("friendlist",Book.search_friend(book,luid))
      render :show_book
    end
    
    #render :show_book
  end

  def get_token_and_uid
    $uid = params[:uid]
    $token = params[:token]
    $login = true
  end

  def show_book
  end
end
