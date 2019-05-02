# frozen_string_literal: true

module Mutations
  class Base < GraphQL::Schema::Mutation
    def resolve(*args)
      puts "\n\n", '#' * 100, 'aqui ó'
      yeld(args)
    end
  end
end
