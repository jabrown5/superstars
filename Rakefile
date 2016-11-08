require 'zlib'
require 'sinatra/activerecord'
require 'sinatra/activerecord/rake'

ActiveRecord::Base.establish_connection(
  # allows our tasks to have access to the DB
  :adapter => 'mysql2',
  :database => 'superstars'
)