class DivisasController < ApplicationController
  before_action :set_divisa, only: %i[ show edit update destroy ]

  # GET /divisas or /divisas.json
  def index
    @divisas = Divisa.all
  end

  # GET /divisas/1 or /divisas/1.json
  def show
  end

  # GET /divisas/new
  def new
    @divisa = Divisa.new
  end

  # GET /divisas/1/edit
  def edit
  end

  # POST /divisas or /divisas.json
  def create
    @divisa = Divisa.new(divisa_params)

    respond_to do |format|
      if @divisa.save
        format.html { redirect_to @divisa, notice: "Divisa was successfully created." }
        format.json { render :show, status: :created, location: @divisa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @divisa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /divisas/1 or /divisas/1.json
  def update
    respond_to do |format|
      if @divisa.update(divisa_params)
        format.html { redirect_to @divisa, notice: "Divisa was successfully updated." }
        format.json { render :show, status: :ok, location: @divisa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @divisa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /divisas/1 or /divisas/1.json
  def destroy
    @divisa.destroy
    respond_to do |format|
      format.html { redirect_to divisas_url, notice: "Divisa was successfully destroyed." }
      format.json { head :no_content }
    end
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
