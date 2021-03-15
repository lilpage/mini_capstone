class Api::OrderController < ApplicationController
  before_action :authenticate_user
  
  def create
    #find "carted"
    @items = CartedProducts.where(status: "carted")
    # items.quantity
    # items.product.price
    @order = Order.new(
      user_id: current_user.id,
      subtotal: ,
      tax: ,
      total: ,
    )
    @order.save
    render "show.json.jb"
  end

end