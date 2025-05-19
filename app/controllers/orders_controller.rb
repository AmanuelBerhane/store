class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
  end

  def index
    @orders = Order.all
  end

  def edit
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to @order
    else
      render :new
    end
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
  end
  private
  def order_params
    params.require(:order).permit(:order_date, :customer_id , :product_id)
  end
end
