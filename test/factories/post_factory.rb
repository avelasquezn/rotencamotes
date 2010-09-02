Factory.define :post do |p|
  p.association(:blog)
  p.association(:user)
  p.sequence(:title) {|n| "Test Title #{n}"}
  p.sequence(:content) {|n| "Test content #{n}"}
end

Factory.define :drafted_post, :parent => :post do |p|
  p.status Post::STATUSES[:drafted]
end

Factory.define :reviewed_post, :parent => :post do |p|
  p.status Post::STATUSES[:reviewed]
end

Factory.define :published_post, :parent => :post do |p|
  p.status Post::STATUSES[:published]
end

