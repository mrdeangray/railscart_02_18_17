class CartController < ApplicationController
  before_action :set_cart
  
  def clear
        session[:cart] =nil
        session[:totalAmount] =0
        session[:totalQuantity] =0
        redirect_to cart_index_path
  end

  def add
    if session[:cart][params[:id]]
      session[:cart][params[:id]] +=1
    else
      session[:cart][params[:id]] =1
    end
    update_inventory(params[:id], -1)
    redirect_to cart_index_path
  end

  def remove_item
    product = Product.find(params[:id])
    product = Product.find(params[:id])
  end

 def update_inventory(id, qty)
   product = Product.find(id)
   product.instock +=qty
   product.save
 end

  def index
  end
  
  private 
  def set_cart
    session[:cart] ||={}
    session[:totalAmount] ||=0
    session[:totalQuantity] ||=0
  end
  
end
