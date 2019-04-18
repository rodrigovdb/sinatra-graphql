# frozen_string_literal: true

require 'graphql'

require_relative 'base'
require_relative 'song'

class Types::Artist < Types::BaseObject
  description 'Artist Object Type'

  field :id,    ID, null: false
  field :name,  String, null: false

  field :songs, [::Types::Song], null: true
end
