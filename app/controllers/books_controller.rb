class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def create
    @book = Book.create(book_params)
    redirect_to books_path
  end
  
  private
  
  def book_params
    params.permit(:title, :author)
  end
  
end
