class ChaptersController < ApplicationController
  before_filter :authenticate_user!, :except => [:show]
  before_filter :find_book
  before_filter :find_chapter, only: [:show, :edit, :update, :destroy]

  def new
    @chapter = @book.chapters.build
  end

  def show
  end

  def edit
  end

  def update
    if @chapter.update_attributes(params[:chapter])
      flash[:success] = "Chapter has successfully updated."
      redirect_to @book
    else
      render action: 'edit', flash: { failed: 'Check again' }
    end
  end

  def create
    @chapter = @book.chapters.build(params[:chapter])

    if @chapter.save
      flash[:success] = "Chapter has been created."
      redirect_to book_path(@book)
    else
      flash[:alert] = "Chapter has not been created."
      render action: "new"
    end
  end

  def destroy
    @chapter.destroy

    redirect_to book_path(@book), flash: { success: "Chapter removed from #{@book.title}" }
  end

  private

  def find_book
    @book = Book.find(params[:book_id])
  end

  def find_chapter
    @chapter = @book.chapters.find(params[:id])
  end
end
