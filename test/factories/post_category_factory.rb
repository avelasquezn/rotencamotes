Factory.define :post_category do |p|
  p.association(:post)
  p.association(:category)
end

