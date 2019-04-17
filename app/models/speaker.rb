# frozen_string_literal: true

class Speaker < ActiveRecord::Base
  validates :name, presence: true
end
