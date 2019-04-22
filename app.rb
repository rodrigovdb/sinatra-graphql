# frozen_string_literal: true

require 'rack/contrib'
require 'sinatra/base'
require 'sinatra/activerecord'

require './app/models'
require './app/graphql'

class App < Sinatra::Base
  set :database_file, 'config/database.yml'

  use Rack::PostBodyContentTypeParser

  before do
    content_type 'application/json'
  end

  post '/graphql' do
    result = AppSchema.execute(
      params[:query],
      variables: params[:variables],
      context: { current_user: nil }
    )

    result.to_json
  end
end
