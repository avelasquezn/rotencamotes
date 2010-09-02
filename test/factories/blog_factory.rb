Factory.define :blog do |b|
  b.sequence(:name) {|n| "Test Blog #{n}"}
  b.association(:user)
  b.association(:category)
end

