class Api::ProductsController < ApplicationController
  def product_list
    @item = Products.first
    render "product.json.jbuilder"
  end
end
