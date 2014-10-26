class Book < ActiveRecord::Base
  
  
  def search(title)
    #search boo
  end

  def search_facebook(book)
    #probably should invoke search_friends_books
    #should return number of likes

  end

  def search_amazon(book)
    #should return link to book in amazon
  end

  def search_google(book)
    #should return link to book in googleplay/googlebooks
  end

  def search_dbpedia(book)
    #should return book description in english
  end

  def search_friends_books()
    #request:
    #https://graph.facebook.com/v2.1/me?fields=frineds{books}

    #response example
    # "friends": {
    #     "data": ["id": "1270655612", 
    #       "books": {
    #         "data": [
    #           {
    #             "category": "Book", 
    #             "name": "Capital", 
    #             "created_time": "2011-02-08T13:22:56+0000", 
    #             "id": "107321249309508"
    #           }] 
  end

  def search_friends_books(book)
    #should return array of friends is
  end


end
