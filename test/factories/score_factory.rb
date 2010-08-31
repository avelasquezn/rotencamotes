Factory.define :score do |s|
  s.association :movie, :factory => :movie
  s.association :user, :factory => :user
  s.scored_at Time.zone.now
  s.source 'community'
  s.value 2
end

