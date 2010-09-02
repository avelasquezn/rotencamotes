Factory.define :genre do |g|
  g.sequence(:name) {|n| "Test Genre #{n}"}
end

