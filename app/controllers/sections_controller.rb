class SectionsController < ApplicationController
  before_filter :find_section, :only => [:destroy, :create, :edit, :update]
  before_filter :find_book_and_chapter

  def new
    @section = @chapter.sections.build
  end

  def edit
    
  end

  def create
    @section = @chapter.sections.build(params[:section])

    if @section.save
      redirect_to [@book, @chapter], flash: { success: "Section successfully created." }
    else
      render action: "new", flash: { failed: "Section failed to save." }
    end
  end

  def destroy

  end

  def update
    if @section.update_attributes!(params[:section])
      redirect_to [@book, @chapter], flash: { success: "Section successfully updated." }
    else
      render action: "edit", flash: { failed: "Section failed to update." }
    end
  end

  private

  def find_book_and_chapter
    @book = Book.find(params[:book_id])
    @chapter = @book.chapters.find(params[:chapter_id])
  end

  def find_section
    @section = Section.find(params[:id])
  end
end
