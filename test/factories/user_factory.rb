Factory.define :user do |u|
  u.sequence(:first_name) {|n| "First#{n}"}
  u.sequence(:last_name) {|n| "Last#{n}"}
  u.sequence(:email) {|n| "user#{n}@example.com".downcase}
  u.password 'secret'
  u.born_at Date.new(1980, 01, 01)
end

