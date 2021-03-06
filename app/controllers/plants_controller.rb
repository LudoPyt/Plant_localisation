class PlantsController < ApplicationController
  before_action :set_plant, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  before_action :require_admin, only: [:new, :destroy]
  before_action :require_approved, only: [:edit, :update]


  # GET /plants
  # GET /plants.json
  def index
    @plants = Plant.order (:name)
  end

  # GET /plants/1
  # GET /plants/1.json
  def show
    # @position = Plant.find(params[:id])
    #@positions = Position.where(plant_id: @plant.id)
    @positions = @plant.positions
  end

  # GET /plants/new
  def new
    @plant = Plant.new
  end

  # GET /plants/1/edit
  def edit
  end

  # POST /plants
  # POST /plants.json
  def create
    @plant = Plant.new(plant_params)

    respond_to do |format|
      if @plant.save
        format.html { redirect_to @plant, notice: 'La plante a bien été créée.' }
        # format.html {redirect_to new_position_path}
        #format.json { render :show, status: :created, location: @plant }
      else
        format.html { render :new }
        format.json { render json: @plant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plants/1
  # PATCH/PUT /plants/1.json
  def update
    respond_to do |format|
      if @plant.update(plant_params)
        format.html { redirect_to @plant, notice: 'La plante a bien été modifiée.' }
        format.json { render :show, status: :ok, location: @plant }
      else
        format.html { render :edit }
        format.json { render json: @plant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plants/1
  # DELETE /plants/1.json
  def destroy
    @plant.destroy
    respond_to do |format|
      format.html { redirect_to plants_url, notice: 'La plante a bien été supprimée.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant
      @plant = Plant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plant_params
      params.require(:plant).permit(:name, :getter,  :description, :maintenance, :color, :creationDate, :caracteristics, :family, pictures: [])
    end

    def require_admin
      unless current_user.admin?
        redirect_to user_session_path
      end
    end

    def require_approved
      unless current_user.approved?
        redirect_to user_session_path
      end
    end

end
