class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  
  def new
    @product = Product.new
  end
  
  def create
     #@product=Product.find_by(uid: session[:login_uid])
     @product=Product.new(name: params[:product][:name],price: params[:product][:price])
  if @product.save
    flash[:info]="商品を追加しました"
    redirect_to products_path
  else
    render :new
  end
  end
  
  def destroy
    @product=Product.find(params[:id])
    @product.destroy
    flash[:info] = "削除しました"
    redirect_to products_path
  end
end
