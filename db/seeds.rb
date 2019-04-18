# frozen_string_literal: true

require 'faker'

if Speaker.count.zero?
  Speaker.create(name: 'Rodrigo', twitter_handle: 'rodrigovdb', bio: 'This is Rodrigo\'s bio', talk_title: 'How to get it running!')

  Speaker.create(name: 'John', twitter_handle: 'johnruby', bio: 'This is John\'s bio', talk_title: 'How to bootstrap a sinatra application')

  Speaker.create(name: 'Jacob', twitter_handle: 'jacob-ruby', bio: 'This is Jacob\'s bio', talk_title: 'Introduction to graphql')
end

if Artist.count.zero?
  10.times do
    artist = Artist.create(name: Faker::Music.unique.band)

    5.times do
      Song.create(
        artist: artist,
        name: Faker::Company.catch_phrase,
        key: Faker::Music.key,
        duration: (60..380).to_a.sample,
        chords: Faker::Hipster.paragraph(10)
      )
    end
  end
end
