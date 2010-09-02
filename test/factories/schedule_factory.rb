Factory.define :schedule do |s|
  s.association :theatre
  s.association :movie
  s.in_theatre_from Time.zone.now
  s.sequence(:description) {|n| "Sched #{n}"}
  s.status Schedule::STATUSES[:ative]
end

