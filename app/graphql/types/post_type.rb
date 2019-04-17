# frozen_string_literal: true

require 'graphql'

class Types::PostType < Types::BaseObject
  description 'A blog post'

  field :id, ID, null: false
  field :title, String, null: false
  field :truncated_preview, String, null: false
  field :comments, [Types::ComentType], null: true,
                                        description: "This post's comments, or null if this post has comments disabled."
end
