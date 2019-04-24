# frozen_string_literal: true

require_relative 'base'

class Mutations::DeleteArtist < Mutations::Base
  argument :id, ID, required: true

  type ::Types::ArtistType

  def resolve(id:)
    artist = Artist.includes(:songs).where(id: id).first
    artist.songs.destroy_all
    artist.destroy

    artist
  end
end
