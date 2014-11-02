require "net/http"
class Book < ActiveRecord::Base
  app_id = "383644138456712"
  app_secret = "6098a751b6d9b829b245fef8ec1f3408"  
  def self.obtain(title)
    #search boo
    #search_friends_books
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

  def self.search_friends_books()
    #request:
    #request_url = "https://graph.facebook.com/endpoint?key=value&access_token=383644138456712"#|6098a751b6d9b829b245fef8ec1f3408"
    request_url = "http://graph.facebook.com/v2.1/me?"#?fields=frineds{books}"
    uri = URI(request_url)
    response = Net::HTTP.get(uri)

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

  # private

  # def self.getAccessTocken
  #   uri_request = "http://graph.facebook.com/v2.1/oauth/access_token?client_id=#{app_id}&client_secret=#{app_secret}&grant_type=client_credentials"
  # end

end
