require 'graphql'

require_relative 'query'

class AppSchema < GraphQL::Schema
  query QueryType
end
