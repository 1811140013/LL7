class TopController < ApplicationController
  def main
    if current_cart
      @products = Product.all
     # @cart_item = CartItem.new
      render :main
    else
       render :main
    end
  end
end
