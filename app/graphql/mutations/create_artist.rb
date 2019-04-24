# frozen_string_literal: true

require_relative 'base'

class Mutations::CreateArtist < Mutations::Base
  argument :name, String, required: true

  type ::Types::ArtistType

  def resolve(name:)
    Artist.find_or_create_by(name: name)
  end
end
