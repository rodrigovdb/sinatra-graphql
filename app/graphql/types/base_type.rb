# frozen_string_literal: true

require 'graphql'

module Types
  class BaseObject < GraphQL::Schema::Object
  end
end

Dir.glob(Pathname(__FILE__).sub_ext('/*.rb'), &method(:require))
