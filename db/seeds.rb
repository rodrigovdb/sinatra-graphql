# frozen_string_literal: true

require 'faker'

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
