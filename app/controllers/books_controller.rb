class BooksController < ApplicationController
  before_filter :find_book, :only => [:show, :edit, :destroy, :update]

  def index
    puts "asdfasdfasdf"
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
    puts "createingadfasf"
    @book = Book.new(params[:book])
    if @book.save
      redirect_to books_path
    else
      render action => 'new', :flash => { :failed => "Failed adding book" }
    end
  end

  def destroy
    if @book.destroy 
      redirect_to books_path, :flash => { :success => "Book removed" }
    end
  end

  def update
    if @book.update_attributes(params[:book])
      redirect_to books_path, :flash => { :success => "Book updated." }
    else
      render :action => 'edit', :flash => { :failed => "Check again." }
    end
  end

  private

  def find_book
    @book = Book.find(params[:id])
  end
end
