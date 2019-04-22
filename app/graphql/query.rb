# frozen_string_literal: true

require 'graphql'

require_relative 'types'

class QueryType < GraphQL::Schema::Object
  description 'The query root of this schema'

  ##
  ## Artists stuffs
  ##
  field :artists, [Types::Artist], null: false do
    description 'Get all artists of the system'
  end

  field :artist, Types::Artist, null: true do
    description 'Find an artist by ID'
    argument :id, ID, required: true
  end

  def artists
    Artist.includes(:songs)
          .order(:name)
  end

  def artist(id:)
    Artist.find(id)
  end

  ##
  ## Song stuffs
  ##
  field :songs, [Types::Song], null: false do
    description 'Get all songs of the system'
  end

  field :song, Types::Song, null: true do
    description 'Find a song by ID'
    argument :id, ID, required: true
  end

  def songs
    Song.all.order(:name)
  end

  def song(id:)
    Song.find(id)
  end
end
