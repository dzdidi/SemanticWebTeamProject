class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  # GET /books
  # GET /books.json
  def index
    @books = Book.all
  end

  # GET /books/1
  # GET /books/1.json
  def show
  end

  # GET /books/new
  def new
    @book = Book.new

    #Get the first result from sparql
    #and show the result on "new" page
    if defined? params[:keyword]
      @book.name = params[:keyword]
      sparql = SPARQL::Client.new("http://dbpedia.org/sparql")
      queryString="
        PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
        PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
        PREFIX dbpedia: <http://dbpedia.org/resource/>
        PREFIX ontology: <http://dbpedia.org/ontology/>
        PREFIX dct: <http://purl.org/dc/terms/>
        select distinct ?name ?book ?author ?abstract ?numberOfPages ?publisher
        where {
          ?book rdf:type ontology:Book;
                dbpprop:name ?name;   
                ontology:abstract ?abstract;
                dbpprop:author ?author.
          OPTIONAL {
          ?book ontology:numberOfPages ?numberOfPages;
                dbpprop:publisher ?publisher
          }
          FILTER (langMatches(lang(?abstract), 'EN'))
          FILTER (lcase(str(?name)) = lcase('#{@book.name}'))
        }LIMIT 1"
      query = sparql.query(queryString)
      query.each_solution do |solution|
        if solution.bound?('author') # ||= true
          @book.author = solution.author
        end
        if solution.bound?('numberOfPages') #||= true
          @book.numberOfPages = solution.numberOfPages
        end
        if solution.bound?('publisher') #||= true
          @book.publisher = solution.publisher
        end
        @book.abstract = solution.abstract.to_s
      end
    end
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books
  # POST /books.json
  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render action: 'show', status: :created, location: @book }
      else
        format.html { render action: 'new' }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:name, :author, :abstract, :numberOfPages, :publisher)
    end
end
