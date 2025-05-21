class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
  end

  def index
    @products = Product.all
  end

  def edit
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Producr.new()
    if @product.save
      redirect_to @product
    else
      render 'new'
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
  end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
  end

  private
  def product_params
    params.require(:product).permit(:name , :price , :gender, :description , :category_id , images: [])
  end

end
