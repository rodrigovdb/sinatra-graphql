# frozen_string_literal: true

require 'graphql'

module Types
  class Artist < GraphQL::Schema::Object
    description 'Artist Object Type'

    field :id,    ID, null: false
    field :name,  String, null: false
  end

  class Song < GraphQL::Schema::Object
    description 'Artist Object Type'

    field :id,        ID, null: false
    field :name,      String, null: false
    field :key,       String, null: true
    field :duration,  Integer, null: true
    field :chords,    String, null: true
    field :artist,    Artist, null: false
  end

  class Artist < GraphQL::Schema::Object
    field :songs, [Song], null: true
  end
end
