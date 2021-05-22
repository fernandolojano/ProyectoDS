class ValorHistoricosController < ApplicationController
  before_action :set_valor_historico, only: %i[ show edit update destroy ]

  # GET /valor_historicos or /valor_historicos.json
  def index
    @valor_historicos = ValorHistorico.all
  end

  # GET /valor_historicos/1 or /valor_historicos/1.json
  def show
  end

  # GET /valor_historicos/new
  def new
    @valor_historico = ValorHistorico.new
  end

  # GET /valor_historicos/1/edit
  def edit
  end

  # POST /valor_historicos or /valor_historicos.json
  def create
    @valor_historico = ValorHistorico.new(valor_historico_params)

    respond_to do |format|
      if @valor_historico.save
        format.html { redirect_to @valor_historico, notice: "Valor historico was successfully created." }
        format.json { render :show, status: :created, location: @valor_historico }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @valor_historico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /valor_historicos/1 or /valor_historicos/1.json
  def update
    respond_to do |format|
      if @valor_historico.update(valor_historico_params)
        format.html { redirect_to @valor_historico, notice: "Valor historico was successfully updated." }
        format.json { render :show, status: :ok, location: @valor_historico }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @valor_historico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /valor_historicos/1 or /valor_historicos/1.json
  def destroy
    @valor_historico.destroy
    respond_to do |format|
      format.html { redirect_to valor_historicos_url, notice: "Valor historico was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_valor_historico
      @valor_historico = ValorHistorico.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def valor_historico_params
      params.require(:valor_historico).permit(:fecha, :valor)
    end
end
