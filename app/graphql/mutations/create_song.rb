# frozen_string_literal: true

require_relative 'base'

class Mutations::CreateSong < Mutations::Base
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
