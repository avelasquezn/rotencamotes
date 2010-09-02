Factory.define :category do |c|
  c.sequence(:name) {|n| "Test Category #{n}"}
  c.category_type Category::TYPES[:general]
end

