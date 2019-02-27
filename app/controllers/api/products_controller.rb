class Api::ProductsController < ApplicationController
  def product_list
    @stuff = Product.all
    render "product_list.json.jbuilder"
  end
end

#   def view_contact
#     @person = Contact.all
#     render "view_contact.json.jbuilder"
#   end
# end
