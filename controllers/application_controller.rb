
class ApplicationController < Sinatra::Base

  require 'bundler'
  Bundler.require

  set :views, File.dirname(__FILE__) + '/views'
  set :public_folder, File.dirname(__FILE__) + '/public'

  # enabling sessions
  # also, connect to our database

  # talk to the DB
  ActiveRecord::Base.establish_connection(
    :adapter => 'mysql2',
    :database => 'superstars'
  )

  enable :sessions, :logging  # is all it takes to enable sessions

  not_found do
    {:message => "not found"}.to_json
  end

  get '/' do
    {:message => "home page"}.to_json
  end

end