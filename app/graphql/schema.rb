# frozen_string_literal: true

require 'graphql'

require_relative 'query'

class AppSchema < GraphQL::Schema
  query Types::QueryType
  mutation Types::MutationType
end
