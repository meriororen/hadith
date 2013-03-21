class SectionsController < ApplicationController
  before_filter :find_section
  before_filter :find_chapter

  def new

  end

  def edit

  end

  def create

  end

  def destroy

  end

  private

  def find_chapter
    @chapter = Book.chapters.find(params[:chapter])
  end

  def find_section
    @section = Section.find(params[:id])
  end
end
