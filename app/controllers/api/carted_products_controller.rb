class Api::CartedProductsController < ApplicationController

  def create

    @carted_product = CartedProduct.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id,
      status: "carted",
      order_id: nil
    )
    @carted_product.save

    # @carted_product = 
    # @user = User.find_by params:product_id (params[:])
    # @product = Product.find_by(id:2)

    # @carted_product = CartedProduct.new(user:@user, product:@product)
    # @carted_product.save
    end

  def index
    @carted_products = CartedProduct.where(status: "carted")
    render "index.json.jbuilder"
  end

end
