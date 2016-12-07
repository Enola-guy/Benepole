class RapportsController < ApplicationController
  before_action :set_rapport, only: [:show, :edit, :update, :destroy]

  # GET /rapports
  # GET /rapports.json
  def index
    @rapports = Rapport.all
  end

  # GET /rapports/1
  # GET /rapports/1.json
  def show
  end

  # GET /rapports/new
  def new
    @rapport = Rapport.new
  end

  # GET /rapports/1/edit
  def edit
  end

  # POST /rapports
  # POST /rapports.json
  def create
    @rapport = Rapport.new(rapport_params)

    respond_to do |format|
      if @rapport.save
        format.html { redirect_to @rapport, notice: 'Rapport was successfully created.' }
        format.json { render :show, status: :created, location: @rapport }
      else
        format.html { render :new }
        format.json { render json: @rapport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rapports/1
  # PATCH/PUT /rapports/1.json
  def update
    respond_to do |format|
      if @rapport.update(rapport_params)
        format.html { redirect_to @rapport, notice: 'Rapport was successfully updated.' }
        format.json { render :show, status: :ok, location: @rapport }
      else
        format.html { render :edit }
        format.json { render json: @rapport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rapports/1
  # DELETE /rapports/1.json
  def destroy
    @rapport.destroy
    respond_to do |format|
      format.html { redirect_to rapports_url, notice: 'Rapport was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rapport
      @rapport = Rapport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rapport_params
      params.require(:rapport).permit(:comment, :blacklist, :note)
    end
end
