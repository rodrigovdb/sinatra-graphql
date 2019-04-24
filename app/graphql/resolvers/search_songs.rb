# frozen_string_literal: true

require_relative 'base'

class Resolvers::SearchSongs < Resolvers::Base
  type [::Types::SongType], null: false

  argument :limit, Integer, required: false, default_value: 20

  def resolve(limit:)
    Song.all
        .includes(:artist)
        .order(:name)
        .limit(limit)
  end
end
