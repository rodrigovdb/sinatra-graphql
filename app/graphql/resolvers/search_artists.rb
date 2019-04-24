# frozen_string_literal: true

class Resolvers::SearchArtists < Resolvers::Base
  type [::Types::ArtistType], null: false

  argument :limit, Integer, required: false, default_value: 20

  def resolve(limit:)
    Artist.includes(:songs)
          .order(:name)
          .limit(limit)
  end
end
