# frozen_string_literal: true

require_relative 'base'

class Resolvers::FindArtist < Resolvers::Base
  type ::Types::ArtistType, null: false

  argument :id, ID, required: true

  def resolve(id:)
    Artist.find(id)
  end
end
