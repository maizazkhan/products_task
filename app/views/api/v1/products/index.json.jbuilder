
json.array! @products do |product|
  json.id product.id
  json.title product.title
  json.price product.price
  json.discount product.discount
  json.tag product.tag
  json.product product.created_at
end