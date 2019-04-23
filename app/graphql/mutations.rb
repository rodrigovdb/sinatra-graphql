# frozen_string_literal: true

require 'graphql'

require_relative 'types'

module Mutations
  class CreateArtist < GraphQL::Schema::Mutation
    argument :name, String, required: true

    type ::Types::ArtistType

    def resolve(name:)
      Artist.find_or_create_by(name: name)
    end
  end
end

module Types
  class MutationType < GraphQL::Schema::Object
    field :create_artist, mutation: ::Mutations::CreateArtist
  end
end
