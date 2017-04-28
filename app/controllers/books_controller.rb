class BooksController < ApplicationController
  respond_to :html
  
  before_filter :authorize, except: [:new, :create]
  before_action :set_book, only: [:edit, :update, :destroy]

  def index
    @books = Book.order(created_at: :desc).paginate(per_page: 3, page: params[:page])
    respond_with @books
  end

  def new
    @book = Book.new
    respond_with @book
  end

  def create
    @book = Book.create(book_params)
    respond_with @book
  end

  def edit
    respond_with @book
  end

  def update
    @book.update(book_params)
    respond_with @book
  end

  def destroy
    @book.destroy
    respond_with @book
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :cover, :genre, :page_count)
  end
end