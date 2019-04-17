# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/activerecord'

require './app/models'

class App < Sinatra::Base
  set :database_file, 'config/database.yml'

  get '/' do
    { hello: :world }.to_json
  end

  get '/speakers' do
    @speakers = Speaker.all

    @speakers.to_json
  end
end
