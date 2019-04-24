# frozen_string_literal: true

require 'graphql'

require_relative 'types'

module Types
  class QueryType < GraphQL::Schema::Object
    description 'The query root of this schema'

    ####################
    ## Artists stuffs ##
    ####################
    field :artists, [ArtistType], null: false do
      description 'Get all artists of the system'
      argument :limit, Integer, required: false, default_value: 20
    end

    field :artist, ArtistType, null: true do
      description 'Find an artist by ID'
      argument :id, ID, required: true
    end

    def artists(limit:)
      Artist.includes(:songs)
            .order(:name)
            .limit(limit)
    end

    def artist(id:)
      Artist.find(id)
    end

    #################
    ## Song stuffs ##
    #################
    field :songs, [SongType], null: false do
      description 'Get all songs of the system'
      argument :limit, Integer, required: false, default_value: 20
    end

    field :song, SongType, null: true do
      description 'Find a song by ID'
      argument :id, ID, required: true
    end

    def songs(limit:)
      Song.all
          .order(:name)
          .limit(limit)
    end

    def song(id:)
      Song.find(id)
    end
  end
end
