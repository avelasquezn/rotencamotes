# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rotencamotes_session',
  :secret      => '70eae9fcf53a2c0384c8dc83ad9385de5183cf7abee960e55624aa467773762d4616ecba0b7872e8d087fed5893017c6f65ccc0492b724fa189846a25819a59c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
