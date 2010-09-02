Factory.define :showtime do |s|
  s.association :schedule
  s.shown_at Time.zone.now
  s.status Showtime::STATUSES[:active]
end

