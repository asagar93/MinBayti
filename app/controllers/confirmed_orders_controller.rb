class ConfirmedOrdersController < ApplicationController
  before_action :set_confirmed_order, only: [:show, :edit, :update, :destroy]

  # GET /confirmed_orders
  # GET /confirmed_orders.json
  def index
    @confirmed_orders = ConfirmedOrder.all
  end

  # GET /confirmed_orders/1
  # GET /confirmed_orders/1.json
  def show
  end

  # GET /confirmed_orders/new
  def new
    @confirmed_order = ConfirmedOrder.new
  end

  # GET /confirmed_orders/1/edit
  def edit
  end

  # POST /confirmed_orders
  # POST /confirmed_orders.json
  def create
    @confirmed_order = ConfirmedOrder.new(confirmed_order_params)

    respond_to do |format|
      if @confirmed_order.save
        format.html { redirect_to @confirmed_order, notice: 'Confirmed order was successfully created.' }
        format.json { render :show, status: :created, location: @confirmed_order }
      else
        format.html { render :new }
        format.json { render json: @confirmed_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /confirmed_orders/1
  # PATCH/PUT /confirmed_orders/1.json
  def update
    respond_to do |format|
      if @confirmed_order.update(confirmed_order_params)
        format.html { redirect_to @confirmed_order, notice: 'Confirmed order was successfully updated.' }
        format.json { render :show, status: :ok, location: @confirmed_order }
      else
        format.html { render :edit }
        format.json { render json: @confirmed_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /confirmed_orders/1
  # DELETE /confirmed_orders/1.json
  def destroy
    @confirmed_order.destroy
    respond_to do |format|
      format.html { redirect_to confirmed_orders_url, notice: 'Confirmed order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_confirmed_order
      @confirmed_order = ConfirmedOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def confirmed_order_params
      params.require(:confirmed_order).permit(:user_id, :payment_method, :payment_status)
    end
end
