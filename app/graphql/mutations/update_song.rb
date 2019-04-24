# frozen_string_literal: true

require_relative 'base'

class Mutations::UpdateSong < Mutations::Base
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
