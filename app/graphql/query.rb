# frozen_string_literal: true

require 'graphql'

require_relative 'types'

class QueryType < GraphQL::Schema::Object
  description 'The query root of this schema'

  field :artists, [Types::Artist], null: false do
    description 'Get all artists of the system'
  end

  field :songs, [Types::Song], null: false do
    description 'Get all songs of the system'
  end

  def artists
    Artist.includes(:songs)
          .order(:name)
  end

  def songs
    Song.all.order(:name)
  end
end
