Factory.define :blog, :default_strategy => :create do |b|
  b.sequence(:name) {|n| "Test Blog #{n}"}
  b.association(:user)
  b.association(:category)
end

