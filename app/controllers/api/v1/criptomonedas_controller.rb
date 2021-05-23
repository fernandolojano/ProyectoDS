module Api
module V1
  
class CriptomonedasController < ApplicationController
  protect_from_forgery with: :null_session
  before_action :set_criptomoneda, only: [:show, :update, :destroy]

  # GET /criptomonedas
  def index
    @criptomonedas = Criptomoneda.all.order('valor_actual DESC')

    render json: @criptomonedas
  end

  # GET /criptomonedas/1
  def show
    render json: @criptomoneda
  end

  # POST /criptomonedas
  def create
    @criptomoneda = Criptomoneda.new(criptomoneda_params)

    if @criptomoneda.save
      render json: @criptomoneda, status: :created, location: @criptomoneda
    else
      render json: @criptomoneda.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /criptomonedas/1
  def update
    if @criptomoneda.update(criptomoneda_params)
      render json: @criptomoneda
    else
      render json: @criptomoneda.errors, status: :unprocessable_entity
    end
  end

  # DELETE /criptomonedas/1
  def destroy
    @criptomoneda.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_criptomoneda
      @criptomoneda = Criptomoneda.find_by(nombre: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def criptomoneda_params
      params.require(:criptomoneda).permit(:token, :nombre, :valor_actual)
    end
end
end
end