# frozen_string_literal: true

require_relative 'base'

class Resolvers::FindSong < Resolvers::Base
  type ::Types::SongType, null: false

  argument :id, ID, required: true

  def resolve(id:)
    Song.find(id)
  end
end
