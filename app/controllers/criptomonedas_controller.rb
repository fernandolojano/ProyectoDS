class CriptomonedasController < ApplicationController
  before_action :set_criptomoneda, only: %i[ show edit update destroy ]

  # GET /criptomonedas or /criptomonedas.json
  def index
    @criptomonedas = Criptomoneda.all
  end

  # GET /criptomonedas/1 or /criptomonedas/1.json
  def show
  end

  # GET /criptomonedas/new
  def new
    @criptomoneda = Criptomoneda.new
  end

  # GET /criptomonedas/1/edit
  def edit
  end

  # POST /criptomonedas or /criptomonedas.json
  def create
    @criptomoneda = Criptomoneda.new(criptomoneda_params)

    respond_to do |format|
      if @criptomoneda.save
        format.html { redirect_to @criptomoneda, notice: "Criptomoneda was successfully created." }
        format.json { render :show, status: :created, location: @criptomoneda }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @criptomoneda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /criptomonedas/1 or /criptomonedas/1.json
  def update
    respond_to do |format|
      if @criptomoneda.update(criptomoneda_params)
        format.html { redirect_to @criptomoneda, notice: "Criptomoneda was successfully updated." }
        format.json { render :show, status: :ok, location: @criptomoneda }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @criptomoneda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /criptomonedas/1 or /criptomonedas/1.json
  def destroy
    @criptomoneda.destroy
    respond_to do |format|
      format.html { redirect_to criptomonedas_url, notice: "Criptomoneda was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_criptomoneda
      @criptomoneda = Criptomoneda.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def criptomoneda_params
      params.require(:criptomoneda).permit(:token, :nombre, :valor_actual)
    end
end
