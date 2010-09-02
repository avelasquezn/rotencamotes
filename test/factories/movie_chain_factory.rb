Factory.define :movie_chain do |m|
  m.sequence(:name) {|n| "Test Chain #{n}"}
end

