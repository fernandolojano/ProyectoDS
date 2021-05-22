class BalanceDivisasController < ApplicationController
  before_action :set_balance_divisa, only: [:show, :update, :destroy]

  # GET /balance_divisas
  def index
    @balance_divisas = BalanceDivisa.all

    render json: @balance_divisas
  end

  # GET /balance_divisas/1
  def show
    render json: @balance_divisa
  end

  # POST /balance_divisas
  def create
    @balance_divisa = BalanceDivisa.new(balance_divisa_params)

    if @balance_divisa.save
      render json: @balance_divisa, status: :created, location: @balance_divisa
    else
      render json: @balance_divisa.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /balance_divisas/1
  def update
    if @balance_divisa.update(balance_divisa_params)
      render json: @balance_divisa
    else
      render json: @balance_divisa.errors, status: :unprocessable_entity
    end
  end

  # DELETE /balance_divisas/1
  def destroy
    @balance_divisa.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_balance_divisa
      @balance_divisa = BalanceDivisa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def balance_divisa_params
      params.require(:balance_divisa).permit(:valor, :usuario_id, :divisa_id)
    end
end
