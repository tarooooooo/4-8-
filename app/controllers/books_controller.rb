class BooksController < ApplicationController
  def top
    @book=Book.new
  end
  def create
    book=Book.new(book_params)
  end
  def index
  end

  def show
  end

  def edit
  end
  
  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
