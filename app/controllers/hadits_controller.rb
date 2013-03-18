class HaditsController < ApplicationController
  # GET /hadits
  # GET /hadits.json
  def index
    @hadits = Hadit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hadits }
    end
  end

  # GET /hadits/1
  # GET /hadits/1.json
  def show
    @hadit = Hadit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hadit }
    end
  end

  # GET /hadits/new
  # GET /hadits/new.json
  def new
    @hadit = Hadit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hadit }
    end
  end

  # GET /hadits/1/edit
  def edit
    @hadit = Hadit.find(params[:id])
  end

  # POST /hadits
  # POST /hadits.json
  def create
    @hadit = Hadit.new(params[:hadit])

    respond_to do |format|
      if @hadit.save
        format.html { redirect_to @hadit, notice: 'Hadit was successfully created.' }
        format.json { render json: @hadit, status: :created, location: @hadit }
      else
        format.html { render action: "new" }
        format.json { render json: @hadit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hadits/1
  # PUT /hadits/1.json
  def update
    @hadit = Hadit.find(params[:id])

    respond_to do |format|
      if @hadit.update_attributes(params[:hadit])
        format.html { redirect_to @hadit, notice: 'Hadit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hadit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hadits/1
  # DELETE /hadits/1.json
  def destroy
    @hadit = Hadit.find(params[:id])
    @hadit.destroy

    respond_to do |format|
      format.html { redirect_to hadits_url }
      format.json { head :no_content }
    end
  end
end
