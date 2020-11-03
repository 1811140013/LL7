class CartsController < ApplicationController
   def show
       if @cart_item = CartItem.order(:updated_at).last 
          @product = Product.find(@cart_item.product_id)
       else
          redirect_to root_path
       end
   end
end