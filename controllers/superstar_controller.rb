class SuperstarController < ApplicationController #superstar controller is inheriting the application controller
  get '/' do
    {:message => 'all items soon'}.to_json
  end

  get '/fab' do
    # learn how to rule the DB
    # use activerecord ORM b/c it's awesome

    #how we create an object in the DB
    # crud
      # create
      # delete
      # update
      # read
    @christopher = Superstar.new
    @christopher.talent = 'Socialite'
    @christopher.name = 'Christopher McAwesome'
    @christopher.outfit = 'blue sweater'
    @christopher.save
    @christopher.to_json

    
  end
end