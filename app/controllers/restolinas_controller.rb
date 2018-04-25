class RestolinasController < ApplicationController
  before_action :set_restolina, only: [:show, :edit, :update, :destroy]

  # GET /restolinas
  # GET /restolinas.json
  def index
    @restolinas = Restolina.all
  end

  # GET /restolinas/1
  # GET /restolinas/1.json
  def show
  end

  # GET /restolinas/new
  def new
    @restolina = Restolina.new
  end

  # GET /restolinas/1/edit
  def edit
  end

  # POST /restolinas
  # POST /restolinas.json
  def create
    @restolina = Restolina.new(restolina_params)

    respond_to do |format|
      if @restolina.save
        format.html { redirect_to @restolina, notice: 'Restolina was successfully created.' }
        format.json { render :show, status: :created, location: @restolina }
      else
        format.html { render :new }
        format.json { render json: @restolina.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restolinas/1
  # PATCH/PUT /restolinas/1.json
  def update
    respond_to do |format|
      if @restolina.update(restolina_params)
        format.html { redirect_to @restolina, notice: 'Restolina was successfully updated.' }
        format.json { render :show, status: :ok, location: @restolina }
      else
        format.html { render :edit }
        format.json { render json: @restolina.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restolinas/1
  # DELETE /restolinas/1.json
  def destroy
    @restolina.destroy
    respond_to do |format|
      format.html { redirect_to restolinas_url, notice: 'Restolina was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restolina
      @restolina = Restolina.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restolina_params
      params.require(:restolina).permit(:login, :Menu)
    end
end
