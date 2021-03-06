class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :admin_only, only: [:index]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
    @order.user_id = session[:user_id]
    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order = current_order
    @confirmed_order = ConfirmedOrder.new
    @confirmed_order.user_id = current_user.id
    @confirmed_order.payment_method = "Cash"
    @confirmed_order.payment_status = "Not paid yet."
    @confirmed_order.save
    @orderlines = Orderline.where("order_id like ?", current_order.id) 
    @orderlines.each do |orderline|
      orderline.order_id = @confirmed_order.id
      orderline.save
    end

    session[:order_id] = nil
    respond_to do |format|
      if @confirmed_order.save
        format.html { redirect_to foods_path, notice: 'Your order was successfully placed.' }
        format.json { head :no_content }
      else
        format.html { render :new }
        format.json { render json: @confirmed_order.errors, status: :unprocessable_entity }
      end
    end
    
  end
  
  private 
  
    def admin_only
      if !current_user.admin?
        redirect_to root_path
      end
    end
    
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:user_id, :payment_method, :date_created, :date_delivered, :date_paid)
    end
end
