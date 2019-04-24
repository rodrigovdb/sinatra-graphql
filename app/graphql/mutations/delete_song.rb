# frozen_string_literal: true

require_relative 'base'

class Mutations::DeleteSong < Mutations::Base
  argument :id, ID, required: true

  type ::Types::SongType

  def resolve(id:)
    song = Song.find(id)
    song.destroy

    song
  end
end
