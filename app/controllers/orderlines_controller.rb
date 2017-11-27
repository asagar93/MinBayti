class OrderlinesController < ApplicationController
  before_action :set_orderline, only: [:show, :edit, :update, :destroy]
  before_action :admin_only

  # GET /orderlines
  # GET /orderlines.json
  def index
    @orderlines = Orderline.all
  end

  # GET /orderlines/1
  # GET /orderlines/1.json
  def show
  end

  # GET /orderlines/new
  def new
    @orderline = Orderline.new
  end

  # GET /orderlines/1/edit
  def edit
  end

  # POST /orderlines
  # POST /orderlines.json
  def create
    @order = current_order
    food = Food.find(params[:food_id])
    @orderline = @order.orderlines.build(food: food)
    @orderline.quantity = params[:quantity]
    @orderline.comment = params[:comment]

    respond_to do |format|
      if @orderline.save
        format.html { redirect_to foods_path, notice: 'Your choice was successfully added to your cart' }
        format.json { render :show, status: :created, location: @orderline }
      else
        format.html { render :new }
        format.json { render json: @orderline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orderlines/1
  # PATCH/PUT /orderlines/1.json
  def update
    respond_to do |format|
      if @orderline.update(orderline_params)
        format.html { redirect_to @orderline, notice: 'Orderline was successfully updated.' }
        format.json { render :show, status: :ok, location: @orderline }
      else
        format.html { render :edit }
        format.json { render json: @orderline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orderlines/1
  # DELETE /orderlines/1.json
  def destroy
    @orderline.destroy
    respond_to do |format|
      format.html { redirect_to orderlines_url, notice: 'Orderline was successfully destroyed.' }
      format.json { head :no_content }
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
    def set_orderline
      @orderline = Orderline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orderline_params
      params.require(:orderline).permit(:idfood, :idorder, :quantity, :comment)
    end
end
