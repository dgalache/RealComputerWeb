class OrdensController < ApplicationController
  before_action :set_ordem, only: [:show, :edit, :update, :destroy]

  # GET /ordens
  # GET /ordens.json
  def index
    @ordens = Ordem.all
  end

  # GET /ordens/1
  # GET /ordens/1.json
  def show
  end

  # GET /ordens/new
  def new
    @ordem = Ordem.new
  end

  # GET /ordens/1/edit
  def edit
  end

  # POST /ordens
  # POST /ordens.json
  def create
    @ordem = Ordem.new(ordem_params)

    respond_to do |format|
      if @ordem.save
        format.html { redirect_to @ordem, notice: 'Ordem was successfully created.' }
        format.json { render :show, status: :created, location: @ordem }
      else
        format.html { render :new }
        format.json { render json: @ordem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordens/1
  # PATCH/PUT /ordens/1.json
  def update
    respond_to do |format|
      if @ordem.update(ordem_params)
        format.html { redirect_to @ordem, notice: 'Ordem was successfully updated.' }
        format.json { render :show, status: :ok, location: @ordem }
      else
        format.html { render :edit }
        format.json { render json: @ordem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordens/1
  # DELETE /ordens/1.json
  def destroy
    @ordem.destroy
    respond_to do |format|
      format.html { redirect_to ordens_url, notice: 'Ordem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordem
      @ordem = Ordem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ordem_params
      params.require(:ordem).permit(:equipamento, :defeito, :marca, :descricao, :string, :status, :valor, :cliente_id, :empregado_id)
    end
end
