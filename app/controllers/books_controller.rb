class BooksController < ApplicationController
  def index
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to @book
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :description, :url, :img_url)
  end
end
