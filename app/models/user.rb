# frozen_string_literal: true

class User < ActiveRecord::Base
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create

  after_create :generate_access_token

  def generate_access_token
    update(access_token: Digest::MD5.hexdigest("#{id} - #{created_at}"))
  end
end
