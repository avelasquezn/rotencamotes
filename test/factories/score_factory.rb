Factory.define :score, :default_strategy => :create do |s|
  s.association :movie
  s.association :user
  s.scored_at Time.zone.now
  s.source Score::SOURCES[:community]
  s.value 2
end

Factory.define :community_member_score, :parent => :score do |s|
  s.source Score::SOURCES[:community]
  s.value 2
end

Factory.define :expert_score, :parent => :score do |s|
  s.source Score::SOURCES[:experts]
  s.value 1
end

