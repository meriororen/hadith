class BooksController < ApplicationController
  before_filter :find_book, :only => [:show, :edit, :destroy, :update]

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def show
  end

  def edit
  end

  def create
    @book = Book.new(params[:book])
    if @book.save
      redirect_to books_path
    else
      
    end
  end

  def destroy
    if @book.destroy 
      redirect_to books_path
    end
  end

  def update
    if @book.update_attributes(params[:book])
      redirect_to books_path, notice: "Book updated."
    else
      render :action => 'edit'
    end
  end

  private

  def find_book
    @book = Book.find(params[:id])
  end
end
