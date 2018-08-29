class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    if current_user
      @book = Book.new
    else
      redirect_to books_path
    end
  end

  def edit
    if current_user
      @book = Book.find(params[:id])
    else
      redirect_to books_path
    end
  end

  def create

    if current_user
      @book = Book.new(book_params)
      if @book.save
        redirect_to @book
      else
        render 'new'
      end
    else
      redirect_to books_path
    end
  end

  def update
    if current_user
      @book = Book.find(params[:id])
      if @book.update(book_params)
        redirect_to @book
      else
        render 'edit'
      end
    else
      redirect_to books_path
    end
  end

  def destroy
    if current_user
      @book = Book.find(params[:id])
      @book.destroy
      redirect_to books_path
    else
      redirect_to books_path
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :description, :url, :checked_out, :user_id)
  end
end
