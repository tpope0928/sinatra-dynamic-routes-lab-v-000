require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here! #

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    response = ' '

    params[:number].to_i.times do
      response += params[:phrase]
    end

    response
  end

end
