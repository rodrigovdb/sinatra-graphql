require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    { hello: :world }.to_json
  end
end
