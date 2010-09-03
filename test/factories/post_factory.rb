Factory.define :post, :default_strategy => :create do |p|
  p.association(:blog)
  p.association(:user)
  p.sequence(:title) {|n| "Test Title #{n}"}
  p.sequence(:content) {|n| "Test content #{n}"}
end

Factory.define :drafted_post, :parent => :post do |p|
  p.status Post::STATUSES[:drafted]
  p.drafted_at Time.zone.now
end

Factory.define :reviewed_post, :parent => :drafted_post do |p|
  p.status Post::STATUSES[:reviewed]
  p.reviewed_at Time.zone.now
end

Factory.define :published_post, :parent => :reviewed_post do |p|
  p.status Post::STATUSES[:published]
  p.published_at Time.zone.now
end

