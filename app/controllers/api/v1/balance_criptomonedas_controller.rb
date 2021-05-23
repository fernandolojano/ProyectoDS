module Api
module V1

class BalanceCriptomonedasController < ApplicationController
  before_action :set_balance_criptomoneda, only: [:show, :update, :destroy]

  # GET /balance_criptomonedas
  def index
    @balance_criptomonedas = BalanceCriptomoneda.all.includes(:criptomoneda)
    #joins("INNER JOIN criptomonedas ON criptomonedas.token_criptomoneda = balance_criptomonedas.token_criptomoneda")

    render json: @balance_criptomonedas
  end

  # GET /balance_criptomonedas/1
  def show
    render json: @balance_criptomoneda
  end

  # POST /balance_criptomonedas
  def create
    @balance_criptomoneda = BalanceCriptomoneda.new(balance_criptomoneda_params)

    if @balance_criptomoneda.save
      render json: @balance_criptomoneda, status: :created, location: @balance_criptomoneda
    else
      render json: @balance_criptomoneda.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /balance_criptomonedas/1
  def update
    if @balance_criptomoneda.update(balance_criptomoneda_params)
      render json: @balance_criptomoneda
    else
      render json: @balance_criptomoneda.errors, status: :unprocessable_entity
    end
  end

  # DELETE /balance_criptomonedas/1
  def destroy
    @balance_criptomoneda.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_balance_criptomoneda
      @balance_criptomoneda = BalanceCriptomoneda.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def balance_criptomoneda_params
      params.require(:balance_criptomoneda).permit(:valor, :usuario, :token_criptomoneda)
    end
end
end
end