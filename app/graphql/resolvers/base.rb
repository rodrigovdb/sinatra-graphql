# frozen_string_literal: true

require 'graphql'

require_relative '../types'

module Resolvers
  class Base < GraphQL::Schema::Resolver
    # if you have a custom argument class, you can attach it:
    # argument_class Arguments::Base

    def authenticate
      require 'pry'; binding.pry
    end
  end
end
