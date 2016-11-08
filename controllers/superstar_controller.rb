class SuperstarController < ApplicationController #superstar controller is inheriting the application controller
  get '/' do
    # {:message => 'all items soon'}.to_json
    # get all
    Superstar.all.to_json
  end

  # The below four are part of a restful controller
  get '/:id' do
    # get by id
    @id = params[:id]
    Superstar.find(@id).to_json
  end

  post '/' do
    # create
    @name = params[:name]
    @talent = params[:talent]
    @outfit = params[:outfit]

    @model = Superstar.new
    @model.name = @name
    @model.talent = @talent
    @model.outfit = @outfit
    @model.save

    # place a breakpoint in ruby
    # binding.pry

    @model.to_json
  end

  patch '/:id' do
    # update
    @id   = params[:id]
    @name = params[:name]
    @talent = params[:talent]
    @outfit = params[:outfit]

    @model = Superstar.find(@id)
    @model.name   = @name
    @model.talent = @talent
    @model.outfit = @outfit
    @model.save

    @model.to_json
  end

  delete '/:id' do
    # delete
    @id = params[:id]
    @model = Superstar.find(@id)
    @model.destroy
    { :message => "Item of id " + @id " was removed."}.to_json
  end



  # get '/fab' do
  #   # learn how to rule the DB
  #   # use activerecord ORM b/c it's awesome
  #
  #   #how we create an object in the DB
  #   # crud
  #     # create
  #     # delete
  #     # update
  #     # read
  #   @christopher = Superstar.new
  #   @christopher.talent = 'Socialite'
  #   @christopher.name = 'Christopher McAwesome'
  #   @christopher.outfit = 'blue sweater'
  #   @christopher.save
  #   @christopher.to_json
  # end

end