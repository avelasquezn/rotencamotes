Factory.define :user do |u|
  u.email 'john.doe@acme.com'
  u.first_name 'John'
  u.last_name 'Doe'
  u.password 'secret'
  u.born_at Date.new(1980, 01, 01)
end

