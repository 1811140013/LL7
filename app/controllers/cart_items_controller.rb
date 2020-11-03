class CartItemsController < ApplicationController
   def create
    params[:cart_id] = current_cart.id
    if @cart_item = CartItem.find_by(product_id: params[:product_id],cart_id: params[:cart_id])
       @cart_item.qty += 1
       @cart_item.save
       redirect_to current_cart
    else
       @cart_item  = CartItem.create(product_id: params[:product_id],cart_id: params[:cart_id])
       @cart_item.qty = 1
       @cart_item.save
       redirect_to current_cart 
    end
   end
    
  def destroy
      params[:cart_id] = current_cart.id
      @cart_item  = CartItem.find_by(product_id: params[:id],cart_id: params[:cart_id])
      @cart_item.destroy
      redirect_to current_cart
  end
end