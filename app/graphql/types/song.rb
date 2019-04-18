# frozen_string_literal: true

require 'graphql'

require_relative 'base'

class Types::Song < Types::BaseObject
  description 'Artist Object Type'

  field :id,        ID, null: false
  field :name,      String, null: false
  field :key,       String, null: true
  field :duration,  Integer, null: true
  field :chords,    String, null: true
end

