# frozen_string_literal: true

class Song < ActiveRecord::Base
  validates :name,    presence: true
  validates :artist,  presence: true

  belongs_to :artist
end

