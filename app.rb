require_relative 'config/environment'

class App < Sinatra::Base


    get "/" do

        erb :index
    end

    get "/new" do

        erb :create_puppy
    end

    post "/puppy" do
        @puppy_info = Puppy.new(params[:name],params[:breed], params[:months_old])

        # @name = @puppy_info.name
        # @breed = @puppy_info.breed
        # @age = puppy_info.age
        binding.pry
        erb :display_puppy
    end
end
