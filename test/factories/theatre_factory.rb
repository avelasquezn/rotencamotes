Factory.define :theatre do |t|
  t.name        'Cinemark Jockey Plaza'
  t.address     'Centro Comercial Jockey Plaza'
  t.association :movie_chain, :factory => :movie_chain
end

