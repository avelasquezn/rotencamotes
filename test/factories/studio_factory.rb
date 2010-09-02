Factory.define :studio do |s|
  s.sequence(:name) {|n| "Test Studio #{n}"}
end

