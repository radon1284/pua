class CustomerDbsController < ApplicationController
  before_action :set_customer_db, only: [:show, :edit, :update, :destroy]

  # GET /customer_dbs
  # GET /customer_dbs.json
  def index
    @customer_dbs = CustomerDb.all
  end

  # GET /customer_dbs/1
  # GET /customer_dbs/1.json
  def show
  end

  # GET /customer_dbs/new
  def new
    @customer_db = CustomerDb.new
  end

  # GET /customer_dbs/1/edit
  def edit
  end

  # POST /customer_dbs
  # POST /customer_dbs.json
  def create
    @customer_db = CustomerDb.new(customer_db_params)

    respond_to do |format|
      if @customer_db.save
        format.html { redirect_to @customer_db, notice: 'Customer db was successfully created.' }
        format.json { render :show, status: :created, location: @customer_db }
      else
        format.html { render :new }
        format.json { render json: @customer_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_dbs/1
  # PATCH/PUT /customer_dbs/1.json
  def update
    respond_to do |format|
      if @customer_db.update(customer_db_params)
        format.html { redirect_to @customer_db, notice: 'Customer db was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_db }
      else
        format.html { render :edit }
        format.json { render json: @customer_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_dbs/1
  # DELETE /customer_dbs/1.json
  def destroy
    @customer_db.destroy
    respond_to do |format|
      format.html { redirect_to customer_dbs_url, notice: 'Customer db was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_db
      @customer_db = CustomerDb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_db_params
      params.require(:customer_db).permit(:name, :location, :telephone, :mobile, :subscription_plan, :latitude, :longitude)
    end
end
