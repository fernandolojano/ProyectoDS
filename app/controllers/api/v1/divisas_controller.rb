module Api
module V1

class DivisasController < ApplicationController
  before_action :set_divisa, only: [:show, :update, :destroy]

  # GET /divisas
  def index
    @divisas = Divisa.all

    render json: @divisas
  end

  # GET /divisas/1
  def show
    render json: @divisa
  end

  # POST /divisas
  def create
    @divisa = Divisa.new(divisa_params)

    if @divisa.save
      render json: @divisa, status: :created, location: @divisa
    else
      render json: @divisa.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /divisas/1
  def update
    if @divisa.update(divisa_params)
      render json: @divisa
    else
      render json: @divisa.errors, status: :unprocessable_entity
    end
  end

  # DELETE /divisas/1
  def destroy
    @divisa.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_divisa
      @divisa = Divisa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def divisa_params
      params.require(:divisa).permit(:token_divisa, :nombre_divisa, :valor, :simbolo)
    end
end
end
end