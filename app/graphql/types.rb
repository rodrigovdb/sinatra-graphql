# frozen_string_literal: true

require 'graphql'

module Types
  class ArtistType < GraphQL::Schema::Object
    description 'Artist Object Type'

    field :id,    ID,     null: false
    field :name,  String, null: false
  end

  class SongType < GraphQL::Schema::Object
    description 'Artist Object Type'

    field :id,        ID,         null: false
    field :name,      String,     null: false
    field :key,       String,     null: true
    field :duration,  Integer,    null: true
    field :chords,    String,     null: true
    field :artist,    ArtistType, null: false
  end

  class ArtistType < GraphQL::Schema::Object
    field :count_songs, Integer,    null: false
    field :songs,       [SongType], null: true

    def count_songs
      object.songs.count
    end
  end
end
