# frozen_string_literal: true

require 'graphql'

require_relative 'query'

class AppSchema < GraphQL::Schema
  query QueryType
end
