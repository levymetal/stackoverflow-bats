class BatsController < ApplicationController
  before_action :set_bat, only: [:show, :edit, :update, :destroy]

  # GET /bats
  # GET /bats.json
  def index
    @bats = Bat.all
  end

  # GET /bats/1
  # GET /bats/1.json
  def show
  end

  # GET /bats/new
  def new
    @bat = Bat.new
  end

  # GET /bats/1/edit
  def edit
  end

  # POST /bats
  # POST /bats.json
  def create
    @bat = Bat.new(bat_params)

    respond_to do |format|
      if @bat.save
        format.html { redirect_to @bat, notice: 'Bat was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bat }
      else
        format.html { render action: 'new' }
        format.json { render json: @bat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bats/1
  # PATCH/PUT /bats/1.json
  def update
    respond_to do |format|
      if @bat.update(bat_params)
        format.html { redirect_to @bat, notice: 'Bat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bats/1
  # DELETE /bats/1.json
  def destroy
    @bat.destroy
    respond_to do |format|
      format.html { redirect_to bats_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bat
      @bat = Bat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bat_params
      params.require(:bat).permit(:name, :manufacturer_id)
    end
end
