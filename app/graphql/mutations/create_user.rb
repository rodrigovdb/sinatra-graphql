# frozen_string_literal: true

require_relative 'base'

class Mutations::CreateUser < Mutations::Base
  argument :name,                  String, required: true
  argument :email,                 String, required: true
  argument :password,              String, required: true
  argument :password_confirmation, String, required: true

  type ::Types::UserType

  def resolve(*args)
    User.create(args.first)
  end
end
