json.array!(@books) do |book|
  json.extract! book, :id, :name, :author, :abstract, :numberOfPages, :publisher
  json.url book_url(book, format: :json)
end
