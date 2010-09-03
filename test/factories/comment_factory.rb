Factory.define :comment, :default_strategy => :create do |c|
  c.association(:user)
  c.association(:post)
  c.sequence(:content) {|n| "Comment #{n}"}
end

