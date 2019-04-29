# frozen_string_literal: true

require 'graphql'

require_relative 'types'
Dir.glob(Pathname(__FILE__).sub_ext('/*.rb'), &method(:require))

module Types
  class MutationType < GraphQL::Schema::Object
    field :create_user,   mutation: ::Mutations::CreateUser

    field :create_artist, mutation: ::Mutations::CreateArtist
    field :update_artist, mutation: ::Mutations::UpdateArtist
    field :delete_artist, mutation: ::Mutations::DeleteArtist

    field :create_song,   mutation: ::Mutations::CreateSong
    field :update_song,   mutation: ::Mutations::UpdateSong
    field :delete_song,   mutation: ::Mutations::DeleteSong
  end
end
