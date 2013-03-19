class HaditsController < ApplicationController
  before_filter :find_book_and_chapter, :only => [:new, :show, :edit, :destroy, :create, :update]

  # GET /hadits/1
  # GET /hadits/1.json
  def show
    @hadit = Hadit.find(params[:id])
  end

  # GET /hadits/new
  # GET /hadits/new.json
  def new
    @hadit = @chapter.hadits.build
  end

  # GET /hadits/1/edit
  def edit
    @hadit = Hadit.find(params[:id])
  end

  # POST /hadits
  # POST /hadits.json
  def create
    @hadit = @chapter.hadits.build(params[:hadit])

    respond_to do |format|
      if @hadit.save
        format.html { redirect_to [@book, @chapter, @hadit], :flash => { :success => 'Hadit was successfully created.'}}
      else
        flash[:alert] = "Check again"
        format.html { render action: "new" }
      end
    end
  end

  # PUT /hadits/1
  # PUT /hadits/1.json
  def update
    @hadit = Hadit.find(params[:id])

    respond_to do |format|
      if @hadit.update_attributes(params[:hadit])
        flash[:success] = "Hadith was successfully updated."
        format.html { redirect_to book_chapter_path(@book, @chapter) }
      else
        flash[:alert] = "Check again."
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /hadits/1
  # DELETE /hadits/1.json
  def destroy
    @hadit = @chapter.hadits.find(params[:id])
    @hadit.destroy

    respond_to do |format|
      format.html { redirect_to book_chapter_path(@book, @chapter) }
    end
  end

  private

  def find_book_and_chapter
    @book = Book.find(params[:book_id])
    @chapter = @book.chapters.find(params[:chapter_id])
  end
end
