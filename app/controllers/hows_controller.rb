class HowsController < ApplicationController
  before_action :set_how, only: [:show, :update, :destroy]

  # GET /hows
  # GET /hows.json
  def index
    @hows = How.all
  end

  # GET /hows/1
  # GET /hows/1.json
  def show
  end

  # POST /hows
  # POST /hows.json
  def create
    @how = How.new(how_params)

    if @how.save
      render :show, status: :created, location: @how
    else
      render json: @how.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hows/1
  # PATCH/PUT /hows/1.json
  def update
    if @how.update(how_params)
      render :show, status: :ok, location: @how
    else
      render json: @how.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hows/1
  # DELETE /hows/1.json
  def destroy
    @how.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_how
      @how = How.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def how_params
      params.require(:how).permit(:key, :value)
    end
end
