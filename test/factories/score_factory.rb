Factory.define :score do |s|
  #s.association :movie
  s.association :user
  s.scored_at Time.zone.now
  s.source 'community'
  s.value 2
end

