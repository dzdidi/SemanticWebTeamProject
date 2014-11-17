class BooksController < ApplicationController


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
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books
  # POST /books.json
  def create
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book   
    end
end
