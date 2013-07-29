class CategorizesController < ApplicationController
  # GET /categorizes
  # GET /categorizes.json
  def index
    @categorizes = Categorize.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @categorizes }
    end
  end

  # GET /categorizes/1
  # GET /categorizes/1.json
  def show
    @categorize = Categorize.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @categorize }
    end
  end

  # GET /categorizes/new
  # GET /categorizes/new.json
  def new
    @categorize = Categorize.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @categorize }
    end
  end

  # GET /categorizes/1/edit
  def edit
    @categorize = Categorize.find(params[:id])
  end

  # POST /categorizes
  # POST /categorizes.json
  def create
    @categorize = Categorize.new(params[:categorize])

    respond_to do |format|
      if @categorize.save
        format.html { redirect_to @categorize, notice: 'Categorize was successfully created.' }
        format.json { render json: @categorize, status: :created, location: @categorize }
      else
        format.html { render action: "new" }
        format.json { render json: @categorize.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /categorizes/1
  # PUT /categorizes/1.json
  def update
    @categorize = Categorize.find(params[:id])

    respond_to do |format|
      if @categorize.update_attributes(params[:categorize])
        format.html { redirect_to @categorize, notice: 'Categorize was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @categorize.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categorizes/1
  # DELETE /categorizes/1.json
  def destroy
    @categorize = Categorize.find(params[:id])
    @categorize.destroy

    respond_to do |format|
      format.html { redirect_to categorizes_url }
      format.json { head :no_content }
    end
  end
end
