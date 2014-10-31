class Book < ActiveRecord::Base
	def searchGoogle(title)
		#books = GoogleBooks.search(9780345508553) 
		#book = books.first
		#puts 'information:'
		#book.each { |k, v| puts "Key: #{k}, Value: #{v}" }
		puts '-------------'
		#y = book.sale_info.each { |k, v| puts "Key: #{k}, Value: #{v}" }
	end

	def Book.testGoolge
		#https://github.com/zeantsoi/GoogleBooks
		books = GoogleBooks.search(9780345508553) 
		book = books.first
		data = book.sale_info
		data["title"] = book.title
		data["image_link"] = book.image_link

		return data
		#y = data.each { |k, v| puts "Key: #{k}, Value: #{v}" }
	end
	

	
end
