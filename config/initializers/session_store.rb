# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bidsketch-test_session',
  :secret      => '50117e6e7d00f3151c37b151a2d8bee01da4cd7196113d23a522e7f9373c45c948e71381ac47eb109f3c101127bdbb7446aa4c9d60c3beef9e95a56319b3cc73'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
