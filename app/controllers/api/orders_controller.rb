class Api::OrdersController < ApplicationController
  before_action :authenticate_user 


  def index
    if current_user
      @orders = current_user.orders
      render "index.json.jbuilder"
    end
  end


  def create



    @order = Order.new(
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
      user_id: current_user.id,
    )
    # @order = CartedProduct.find_by(status: "carted")
    


    # if @order.save
    #   render json: {message: "correcto, you created/placed an order"}
    # else
    #   render json: {message: "nice try, no order created"}

    # price = Product.find_by(id: params[:product_id]).price
    # quantity = params[:quantity].to_i
    # @order = Order.new(
    #   user_id: current_user.id, 
    #   product_id: params[:product_id],
    #   quantity: quantity,
    #   subtotal: price * quantity,
    #   tax: (price * 0.09),
    #   total: (price * 1.09) * quantity
    #   )
    # if @order.save
    #   render json: {message: "correcto, you created/placed an order"}
    # else
    #   render json: {message: "nice try, no order created"}
  end
  end
end
