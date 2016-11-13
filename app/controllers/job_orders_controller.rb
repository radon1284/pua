class JobOrdersController < ApplicationController
  before_action :set_job_order, only: [:show, :edit, :update, :destroy]

  # GET /job_orders
  # GET /job_orders.json
  def index
    @job_orders = JobOrder.all
  end

  # GET /job_orders/1
  # GET /job_orders/1.json
  def show
  end

  # GET /job_orders/new
  def new
    @job_order = JobOrder.new
  end

  # GET /job_orders/1/edit
  def edit
  end

  # POST /job_orders
  # POST /job_orders.json
  def create
    @job_order = JobOrder.new(job_order_params)

    respond_to do |format|
      if @job_order.save
        format.html { redirect_to @job_order, notice: 'Job order was successfully created.' }
        format.json { render :show, status: :created, location: @job_order }
      else
        format.html { render :new }
        format.json { render json: @job_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_orders/1
  # PATCH/PUT /job_orders/1.json
  def update
    respond_to do |format|
      if @job_order.update(job_order_params)
        format.html { redirect_to @job_order, notice: 'Job order was successfully updated.' }
        format.json { render :show, status: :ok, location: @job_order }
      else
        format.html { render :edit }
        format.json { render json: @job_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_orders/1
  # DELETE /job_orders/1.json
  def destroy
    @job_order.destroy
    respond_to do |format|
      format.html { redirect_to job_orders_url, notice: 'Job order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_order
      @job_order = JobOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_order_params
      params.require(:job_order).permit(:customer_name, :customer_location, :type_of_plan, :status, :job_order_no, :latitude, :longitude)
    end
end
