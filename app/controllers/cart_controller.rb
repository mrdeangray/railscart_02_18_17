class CartController < ApplicationController
  before_action :set_cart
  
  def clear
    session[:cart].each do |id, qty|
      product = Product.find(id)
      product.instock += qty
      product.save
    end
    
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
    session[:cart].delete(params[:id])

    update_inventory(params[:id], params[:qty].to_i )
    redirect_to cart_index_path
  end
  
  def update_quantity
    session[:cart][params[:id]] = params[:session][:entered_qty].to_i
   product = Product.find(params[:id])
   product.instock = 5- params[:session][:entered_qty].to_i
   product.save

    redirect_to cart_index_path
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
