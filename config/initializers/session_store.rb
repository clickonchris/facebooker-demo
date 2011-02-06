# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_facebooker-demo_session',
  :secret      => '4729c6b615d8179e77b1fcf51747e8c3e10387aa39d8c1f64004df8b623e76c14c604ec43e63a9de1d91e74ab8709cc2f30171d3e24ff93e58cc7d80ec2e2b3c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
