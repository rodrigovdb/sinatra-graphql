# frozen_string_literal: true

require 'rack/contrib'
require 'sinatra/base'
require 'sinatra/activerecord'

require './app/models'
require './app/graphql'

class App < Sinatra::Base
  set :database_file, 'config/database.yml'

  use Rack::PostBodyContentTypeParser

  get '/' do
    { hello: :world }.to_json
  end

  post '/graphql' do
    result = AppSchema.execute(
      params[:query],
      variables: params[:variables],
      context: { current_user: nil }
    )

    result.to_json
  end

  get '/speakers' do
    @speakers = Speaker.all

    @speakers.to_json
  end
end
