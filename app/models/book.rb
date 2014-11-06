require "net/http"
class Book < ActiveRecord::Base

	def Book.searchGoolge(title)
		#https://github.com/zeantsoi/GoogleBooks
		
		#from here
		
		books = GoogleBooks.search(title) 
		book = books.first
		data = book.sale_info
		data["title"] = book.title
		data["image_link"] = book.image_link
		data["amazonurl"] = "http://www.amazon.com/s/ref=nb_sb_ss_c_0_4?url=search-alias%3Dstripbooks&field-keywords="+title.tr(" ","+");

		
		#finish
		
		return data
		#y = data.each { |k, v| puts "Key: #{k}, Value: #{v}" }
	end
	

  OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE #stupid trick
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
    #request_url = "https://graph.facebook.com/endpoint?key=value&access_token=#{$token}"#|6098a751b6d9b829b245fef8ec1f3408"


#fields=friends{books}&
#%7Bbooks%7D

    url = "https://graph.facebook.com/v2.1/me?friends%7Bbooks%7D&access_token=#{$token}"
    uri = URI.parse(url)#%7Bbooks%7D&access_token=#{$token}")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER
    request = Net::HTTP::Get.new(uri.request_uri)
    response = http.request(request)

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
    p "==================================="
    p response.body
    p "==================================="
  end

  def search_friends_books(book)
    #should return array of friends is
  end

  # private

  # def self.getAccessTocken
  #   uri_request = "http://graph.facebook.com/v2.1/oauth/access_token?client_id=#{app_id}&client_secret=#{app_secret}&grant_type=client_credentials"
  # end

end
