# frozen_string_literal: true

require 'graphql'

require_relative 'query'

class AppSchema < GraphQL::Schema
  # query QueryArtist
  # query QuerySong
  query QueryType
end
