# frozen_string_literal: true

class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.references  :artist, foreign_key: true
      t.string      :name, null: false
      t.string      :key
      t.integer     :duration
      t.text        :chords
    end
  end
end
