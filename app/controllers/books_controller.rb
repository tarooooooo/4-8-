class BooksController < ApplicationController
  def top
   
  end
  def create
    @book=Book.new(book_params)
    @book.save
    redirect_to book_path(@book.id)
  end
  def index
     @book=Book.new
  end

  def show
    @book=Book.find(params[:id])
  end

  def edit
  end
  
  private
  def book_params
    params.permit(:title,:body)
  end
end
