class Api::ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

#     Exercise:
# Inside your mini_capstone, add the following features:
# - Change the index action to return products sorted by id by default.
# - Change the index action to allow for searching by name (using params “search”).
# - Change the index action to allow the user to see products in order of price, lowest to highest (using params “sort” equal to “price”).
# - Change the index action to allow the user to see products in order of price, highest to lowest (using params “sort” equal to “price” and params “sort_order” equal to “desc”).
# - Change the index action to allow the user to display all products under $2.00 or some other price of your choosing (using params “discount” equal to “true”).


  def index
    @products = Product.all

    name_search = params[:name]
    if name_search
      @products = @products.where("name ILIKE ?", "%#{name_search}%")
    else
    end
    # @products = @products.order(:id => :asc)
      # price_sort = params[:price]
    # if price_sort
    #   @products = @products.sort(:price => :asc)
    # else
    # end

    render "index.json.jbuilder"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      # image_url: params[:image_url],
      in_stock: params[:in_stock],
      description: params[:description],
      supplier_id: params[:supplier_id]
      )
    if @product.save
      render "show.json.jbuilder"
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessible_entity 
    end
  end


  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.in_stock = params[:in_stock] || @product.in_stock
    @product.price = params[:price] || @product.price
    # @product.image_url = params[:image_url] || @product.image_url
    # @image.url = params[:url] || @image.url
    @product.description = params[:description] || @product.description
    if @product.save
      render "show.json.jbuilder"
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessible_entity 
    end
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