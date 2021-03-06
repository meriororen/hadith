class BooksController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]
  before_filter :find_book, only: [:show, :edit, :destroy, :update]

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def show
    @chapters = @book.chapters.sort_by(&:chnum)
  end

  def edit
  end

  def create
    @book = Book.new(params[:book])
    if @book.save
      redirect_to books_path
    else
      render action => 'new', flash: { failed: "Failed adding book" }
    end
  end

  def destroy
    if @book.destroy 
      redirect_to books_path, flash: { success: "Book removed" }
    end
  end

  def update
    if @book.update_attributes(params[:book])
      redirect_to books_path, flash: { success: "Book updated." }
    else
      render action: "edit", flash: { failed: "Book failed to update." }
    end
  end

  private

  def find_book
    @book = Book.find(params[:id])
  end
end
