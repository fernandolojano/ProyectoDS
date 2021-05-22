class BalanceCriptomonedasController < ApplicationController
  before_action :set_balance_criptomoneda, only: %i[ show edit update destroy ]

  # GET /balance_criptomonedas or /balance_criptomonedas.json
  def index
    @balance_criptomonedas = BalanceCriptomoneda.all
  end

  # GET /balance_criptomonedas/1 or /balance_criptomonedas/1.json
  def show
  end

  # GET /balance_criptomonedas/new
  def new
    @balance_criptomoneda = BalanceCriptomoneda.new
  end

  # GET /balance_criptomonedas/1/edit
  def edit
  end

  # POST /balance_criptomonedas or /balance_criptomonedas.json
  def create
    @balance_criptomoneda = BalanceCriptomoneda.new(balance_criptomoneda_params)

    respond_to do |format|
      if @balance_criptomoneda.save
        format.html { redirect_to @balance_criptomoneda, notice: "Balance criptomoneda was successfully created." }
        format.json { render :show, status: :created, location: @balance_criptomoneda }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @balance_criptomoneda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /balance_criptomonedas/1 or /balance_criptomonedas/1.json
  def update
    respond_to do |format|
      if @balance_criptomoneda.update(balance_criptomoneda_params)
        format.html { redirect_to @balance_criptomoneda, notice: "Balance criptomoneda was successfully updated." }
        format.json { render :show, status: :ok, location: @balance_criptomoneda }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @balance_criptomoneda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /balance_criptomonedas/1 or /balance_criptomonedas/1.json
  def destroy
    @balance_criptomoneda.destroy
    respond_to do |format|
      format.html { redirect_to balance_criptomonedas_url, notice: "Balance criptomoneda was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_balance_criptomoneda
      @balance_criptomoneda = BalanceCriptomoneda.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def balance_criptomoneda_params
      params.require(:balance_criptomoneda).permit(:valor, :usuario, :criptomoneda_id)
    end
end
