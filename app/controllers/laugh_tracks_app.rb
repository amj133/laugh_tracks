require 'pry'

class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/comedians' do
    if params[:age]
      @comedians = Comedian.find_by(age: params[:age].to_i)
    else
      @comedians = Comedian.all
    end
    @average_age = Comedian.all.reduce(0) do |sum, comedian|
      sum + comedian.age
    end / (Comedian.all.count)
    erb :index
  end

end
