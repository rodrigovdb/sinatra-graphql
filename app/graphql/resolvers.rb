# frozen_string_literal: true

require 'graphql'

require_relative 'types'

module Resolvers
  class Base < GraphQL::Schema::Resolver
    # if you have a custom argument class, you can attach it:
    # argument_class Arguments::Base
  end

  class SearchArtists < Resolvers::Base
    type [::Types::ArtistType], null: false

    argument :limit, Integer, required: false, default_value: 20

    def resolve(limit:)
      Artist.includes(:songs)
            .order(:name)
            .limit(limit)
    end
  end

  class FindArtist < Resolvers::Base
    type ::Types::ArtistType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      Artist.find(id)
    end
  end

  class SearchSongs < Resolvers::Base
    type [::Types::SongType], null: false

    argument :limit, Integer, required: false, default_value: 20

    def resolve(limit:)
      Song.all
          .includes(:artist)
          .order(:name)
          .limit(limit)
    end
  end

  class FindSong < Resolvers::Base
    type ::Types::SongType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      Song.find(id)
    end
  end
end

