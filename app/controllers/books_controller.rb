class BooksController < ApplicationController

  def index
    @user = current_user
    @books = Book.all
    @book = Book.new
  end

  def show
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to '/books'
  end

  def destroy
  end

  def update
  end

  private

  def book_params
    params.require(:book).permit(:title,:body)
  end
end
