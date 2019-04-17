require 'graphql'

require_relative 'types'

class QueryType < GraphQL::Schema::Object
  description 'The query root of this schema'

  field :speakers, [Types::Speaker], null: false do
    description 'Get all speakers of the system'
  end

  def speakers
    Speaker.all.order(:name)
  end
end
