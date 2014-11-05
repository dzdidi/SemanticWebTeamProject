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
	

	
end
