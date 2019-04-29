# frozen_string_literal: true

require_relative 'base'

class Resolvers::AuthenticateUser < Resolvers::Base
  null true

  type ::Types::UserType, null: false

  argument :email,    String, required: true
  argument :password, String, required: true

  def resolve(email:, password:)
    user = User.find_by(email: email)

    return unless user

    user.authenticate(password) || nil
  end
end
