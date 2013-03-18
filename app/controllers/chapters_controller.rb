class ChaptersController < ApplicationController
  before_filter :find_book
  before_filter :find_chapter, :only => [:show, :edit, :update, :destroy]

  def index

  end

  def new
    @chapter = @book.chapters.build
  end

  def show

  end

  def edit

  end

  def update

  end

  def create
    @chapter = @book.chapters.build(params[:chapter])

    if @chapter.save
      flash[:notice] = "Chapter has been created."
      redirect_to [@book, @chapter]
    else
      flash[:alert] = "Chapter has not been created."
      render :action => "new"
    end
  end

  private

  def find_book
    @book = Book.find(params[:book_id])
  end

  def find_chapter
    @chapter = @book.chapters.find(params[:id])
  end
end
