class BooksController < ApplicationController
  def top

  end
  def create
    @book=Book.new(book_params)
  if @book.save
    redirect_to book_path(@book.id),notice:'Book was successfully created.'
  else
    @books = Book.all
    render action: :index
  end
  end
  def index
     @book=Book.new
     @books=Book.all.order(:id)
  end

  def show
    @book=Book.find(params[:id])
  end

  def edit
    @book=Book.find(params[:id])
  end
  
  def update
    @book=Book.find(params[:id])
   if @book.update(book_params)
    redirect_to book_path(@book.id),notice:'Book was successfully updated.'
   else
    render action: :edit
  end
  end
  
  def destroy
    book=Book.find(params[:id])
   if book.destroy
    redirect_to books_path,notice:'Book was successfully destroyed.'
  else
    @books = Book.all
    render action: :index
  end
  end
  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
