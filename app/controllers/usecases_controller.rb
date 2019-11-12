class UsecasesController < ApplicationController
  before_action :set_usecase, only: [:show, :update, :destroy]

  # GET /usecases
  # GET /usecases.json
  def index
    @usecases = Usecase.all
  end

  # GET /usecases/1
  # GET /usecases/1.json
  def show
  end

  # POST /usecases
  # POST /usecases.json
  def create
    @usecase = Usecase.new(usecase_params)

    if @usecase.save
      render :show, status: :created, location: @usecase
    else
      render json: @usecase.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /usecases/1
  # PATCH/PUT /usecases/1.json
  def update
    if @usecase.update(usecase_params)
      render :show, status: :ok, location: @usecase
    else
      render json: @usecase.errors, status: :unprocessable_entity
    end
  end

  # DELETE /usecases/1
  # DELETE /usecases/1.json
  def destroy
    @usecase.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usecase
      @usecase = Usecase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usecase_params
      params.require(:usecase).permit(:what, :how)
    end
end
