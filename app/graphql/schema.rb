# frozen_string_literal: true

require 'graphql'

class AppSchema < GraphQL::Schema
  query Types::QueryType
  mutation Types::MutationType
end
