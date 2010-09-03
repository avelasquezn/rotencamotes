Factory.define :user, :default_strategy => :create do |u|
  u.sequence(:first_name) {|n| "First#{n}"}
  u.sequence(:last_name) {|n| "Last#{n}"}
  u.sequence(:email) {|n| "user#{n}@example.com".downcase}
  u.password 'secret'
  u.member_of User::ROLES[:community]
  u.born_at Date.new(1980, 01, 01)
end

