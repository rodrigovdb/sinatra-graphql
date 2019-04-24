# frozen_string_literal: true

require_relative 'base'

class Mutations::UpdateArtist < Mutations::Base
  argument :id,   ID,     required: true
  argument :name, String, required: true

  type ::Types::ArtistType

  def resolve(id:, name:)
    artist = Artist.find(id)
    artist.update(name: name)

    artist
  end
end
