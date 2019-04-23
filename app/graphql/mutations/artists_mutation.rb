# frozen_string_literal: true

module Mutations
  class CreateArtist < GraphQL::Schema::Mutation
    argument :name, String, required: true

    type ::Types::ArtistType

    def resolve(name:)
      Artist.find_or_create_by(name: name)
    end
  end

  class UpdateArtist < GraphQL::Schema::Mutation
    argument :id,   ID,     required: true
    argument :name, String, required: true

    type ::Types::ArtistType

    def resolve(id:, name:)
      artist = Artist.find(id)
      artist.update(name: name)

      artist
    end
  end

  class DeleteArtist < GraphQL::Schema::Mutation
    argument :id, ID, required: true

    type ::Types::ArtistType

    def resolve(id:)
      artist = Artist.includes(:songs).where(id: id).first
      artist.songs.destroy_all
      artist.destroy

      artist
    end
  end
end
