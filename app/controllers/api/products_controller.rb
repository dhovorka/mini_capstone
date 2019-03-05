class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jbuilder"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "product.json.jbuilder"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
      )
    @product.save
    render "show.json.jbuilder"
  end


  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    @product.save
    render "product.json.jbuilder"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product = Product.destroy
    render "show.json.jbuilder"
  end
 end

# @stuff = Product.find_by(id: product_id)
# This is preffered for larger numbers of product, this current answwer only works with 
# low overall product numbers 

# def input_id
#   id = params["added_id"].to_i
#   if id == 1
#     @stuff = Product.first
#     render "product_list.json.jbuilder"
#   elsif id == 2
#     @stuff = Product.second
#     render "product_list.json.jbuilder"
#   elsif id == 3
#     @stuff = Product.third
#     render "product_list.json.jbuilder"
#   end
# end

# def input_id_segment
#   id = params["my_id"].to_i
#   if id == 1
#     @stuff = Product.first
#     render "product_list.json.jbuilder"
#   elsif id == 2
#     @stuff = Product.second
#     render "product_list.json.jbuilder"
#   elsif id == 3
#     @stuff = Product.third
#     render "product_list.json.jbuilder"
#   end
# end
# end