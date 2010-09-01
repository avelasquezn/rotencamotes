Factory.define :movie do |m|
  m.sequence(:title) { |n| "Test Movie #{n}" }
end

