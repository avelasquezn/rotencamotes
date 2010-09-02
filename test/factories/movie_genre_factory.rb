Factory.define :movie_genre do |mg|
  mg.association :movie
  mg.association :genre
end

