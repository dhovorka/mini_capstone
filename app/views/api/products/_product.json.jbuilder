# In your mini_capstone, make a jbuilder partial called `_product.json.jbuilder` update your other jbuilder views to use the partial.
  json.name product.name
  json.id product.id
  json.in_stock product.in_stock
  json.price product.price
  json.image_url product.image_url
  json.description product.description
  json.discount product.is_discounted?
  json.tax_cost product.tax
  json.total product.total
  json.supplier_id product.supplier_id