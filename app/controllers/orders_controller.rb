class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.paginate(:page => params[:page])
   if params[:customer].present?
        @customer = Customer.find  params[:customer]
        @orders = Order.where(customer_id: params[:customer]).page(params[:page])
    else
      @orders = Order.paginate(:page => params[:page])
    end
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @tasks = @order.tasks
  end
  
  def update_articles
    @articles = Article.where("customer_id = ?", params[:customer_id])
    respond_to do |format|
      format.js
    end
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

    respond_to do |format|
      if @order.save
        format.html { redirect_to orders_url, notice: 'Dati commessa caricati.' }
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
        format.html { redirect_to orders_url, notice: 'Dati commessa modificati.' }
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
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private 
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:date_ric, :date_cons, :note, :article_id, :customer_id, :price, :total_pieces, :packaging, :ord_number)
    end
end
