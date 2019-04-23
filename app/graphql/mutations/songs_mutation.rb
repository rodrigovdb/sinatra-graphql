# frozen_string_literal: true

module Mutations
  class CreateSong < GraphQL::Schema::Mutation
    argument :artist_id,  ID,     required: true
    argument :name,       String, required: true
    argument :key,        String, required: false
    argument :duration,   Int,    required: false
    argument :chords,     String, required: false

    type ::Types::SongType

    def resolve(artist_id:, name:, key:, duration:, chords:)
      Song.create(artist_id: artist_id, name: name, key: key, duration: duration, chords: chords)
    end
  end

  class UpdateSong < GraphQL::Schema::Mutation
    argument :id,       ID,     required: true
    argument :name,     String, required: true
    argument :key,      String, required: false
    argument :duration, Int,    required: false
    argument :chords,   String, required: false

    type ::Types::SongType

    def resolve(id:, name:, key:, duration:, chords:)
      song = Song.find(id)
      song.update(name: name, key: key, duration: duration, chords: chords)

      song
    end
  end

  class DeleteSong < GraphQL::Schema::Mutation
    argument :id, ID, required: true

    type ::Types::SongType

    def resolve(id:)
      song = Song.find(id)
      song.destroy

      song
    end
  end
end
