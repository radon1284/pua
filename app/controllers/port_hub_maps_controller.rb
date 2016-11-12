class PortHubMapsController < ApplicationController
  before_action :set_port_hub_map, only: [:show, :edit, :update, :destroy]

  # GET /port_hub_maps
  # GET /port_hub_maps.json
  def index
    @port_hub_maps = PortHubMap.all
  end

  # GET /port_hub_maps/1
  # GET /port_hub_maps/1.json
  def show
  end

  # GET /port_hub_maps/new
  def new
    @port_hub_map = PortHubMap.new
  end

  # GET /port_hub_maps/1/edit
  def edit
  end

  # POST /port_hub_maps
  # POST /port_hub_maps.json
  def create
    @port_hub_map = PortHubMap.new(port_hub_map_params)

    respond_to do |format|
      if @port_hub_map.save
        format.html { redirect_to @port_hub_map, notice: 'Port hub map was successfully created.' }
        format.json { render :show, status: :created, location: @port_hub_map }
      else
        format.html { render :new }
        format.json { render json: @port_hub_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /port_hub_maps/1
  # PATCH/PUT /port_hub_maps/1.json
  def update
    respond_to do |format|
      if @port_hub_map.update(port_hub_map_params)
        format.html { redirect_to @port_hub_map, notice: 'Port hub map was successfully updated.' }
        format.json { render :show, status: :ok, location: @port_hub_map }
      else
        format.html { render :edit }
        format.json { render json: @port_hub_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /port_hub_maps/1
  # DELETE /port_hub_maps/1.json
  def destroy
    @port_hub_map.destroy
    respond_to do |format|
      format.html { redirect_to port_hub_maps_url, notice: 'Port hub map was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_port_hub_map
      @port_hub_map = PortHubMap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def port_hub_map_params
      params.require(:port_hub_map).permit(:no_of_port, :no_of_available_port, :location)
    end
end
