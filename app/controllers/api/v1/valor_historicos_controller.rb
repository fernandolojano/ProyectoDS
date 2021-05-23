module Api
module V1

class ValorHistoricosController < ApplicationController
  before_action :set_valor_historico, only: [:show, :update, :destroy]

  # GET /valor_historicos
  def index
    @valor_historicos = ValorHistorico.all.order('fecha DESC')

    render json: @valor_historicos
  end

  # GET /valor_historicos/1
  def show
    render json: @valor_historico
  end

  # POST /valor_historicos
  def create
    @valor_historico = ValorHistorico.new(valor_historico_params)

    if @valor_historico.save
      render json: @valor_historico, status: :created, location: @valor_historico
    else
      render json: @valor_historico.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /valor_historicos/1
  def update
    if @valor_historico.update(valor_historico_params)
      render json: @valor_historico
    else
      render json: @valor_historico.errors, status: :unprocessable_entity
    end
  end

  # DELETE /valor_historicos/1
  def destroy
    @valor_historico.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_valor_historico
      @valor_historico = ValorHistorico.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def valor_historico_params
      params.require(:valor_historico).permit(:fecha, :valor, :criptomoneda_id)
    end
end
end
end