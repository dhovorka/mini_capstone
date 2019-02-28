class Api::ProductsController < ApplicationController
  def product_list
    @stuff = Product.all
    render "product_list.json.jbuilder"
  end

  def product_one
    @stuff = Product.first
    render "product_list.json.jbuilder"
  end

  def product_three
    @stuff = Product.third
    render "product_list.json.jbuilder"
  end
#   def view_contact
#     @person = Contact.all
#     render "view_contact.json.jbuilder"
#   end
# end

# @stuff = Product.find_by(id: product_id)
# This is preffered for larger numbers of product, this current answwer only works with 
# low overall product numbers 

def input_id
  id = params["added_id"].to_i
  if id == 1
    @stuff = Product.first
    render "product_list.json.jbuilder"
  elsif id == 2
    @stuff = Product.second
    render "product_list.json.jbuilder"
  elsif id == 3
    @stuff = Product.third
    render "product_list.json.jbuilder"
  end
end

def input_id_segment
  id = params["my_id"].to_i
  if id == 1
    @stuff = Product.first
    render "product_list.json.jbuilder"
  elsif id == 2
    @stuff = Product.second
    render "product_list.json.jbuilder"
  elsif id == 3
    @stuff = Product.third
    render "product_list.json.jbuilder"
  end
end
end