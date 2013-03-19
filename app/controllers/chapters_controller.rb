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
    if @chapter.update_attributes(params[:chapter])
      redirect_to @book, notice: 'Chapter was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def create
    @chapter = @book.chapters.build(params[:chapter])

    if @chapter.save
      flash[:notice] = "Chapter has been created."
      redirect_to book_path(@book)
    else
      flash[:alert] = "Chapter has not been created."
      render :action => "new"
    end
  end

  def destroy
    @chapter.destroy

    redirect_to book_path(@book)
  end

  private

  def find_book
    @book = Book.find(params[:book_id])
  end

  def find_chapter
    @chapter = @book.chapters.find(params[:id])
  end
end
