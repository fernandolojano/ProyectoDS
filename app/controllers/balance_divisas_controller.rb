class BalanceDivisasController < ApplicationController
  before_action :set_balance_divisa, only: %i[ show edit update destroy ]

  # GET /balance_divisas or /balance_divisas.json
  def index
    @balance_divisas = BalanceDivisa.all
  end

  # GET /balance_divisas/1 or /balance_divisas/1.json
  def show
  end

  # GET /balance_divisas/new
  def new
    @balance_divisa = BalanceDivisa.new
  end

  # GET /balance_divisas/1/edit
  def edit
  end

  # POST /balance_divisas or /balance_divisas.json
  def create
    @balance_divisa = BalanceDivisa.new(balance_divisa_params)

    respond_to do |format|
      if @balance_divisa.save
        format.html { redirect_to @balance_divisa, notice: "Balance divisa was successfully created." }
        format.json { render :show, status: :created, location: @balance_divisa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @balance_divisa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /balance_divisas/1 or /balance_divisas/1.json
  def update
    respond_to do |format|
      if @balance_divisa.update(balance_divisa_params)
        format.html { redirect_to @balance_divisa, notice: "Balance divisa was successfully updated." }
        format.json { render :show, status: :ok, location: @balance_divisa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @balance_divisa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /balance_divisas/1 or /balance_divisas/1.json
  def destroy
    @balance_divisa.destroy
    respond_to do |format|
      format.html { redirect_to balance_divisas_url, notice: "Balance divisa was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_balance_divisa
      @balance_divisa = BalanceDivisa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def balance_divisa_params
      params.require(:balance_divisa).permit(:valor)
    end
end
