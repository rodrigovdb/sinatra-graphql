# frozen_string_literal: true

require 'graphql'

require_relative 'resolvers'

module Types
  class QueryType < GraphQL::Schema::Object
    description 'The query root of this schema'

    ## User authentication ##
    field :authenticate_user, resolver: Resolvers::AuthenticateUser

    ## Artists stuffs ##
    field :artists, resolver: Resolvers::SearchArtists
    field :artist,  resolver: Resolvers::FindArtist

    ## Song stuffs ##
    field :songs, resolver: Resolvers::SearchSongs
    field :song,  resolver: Resolvers::FindSong
  end
end
