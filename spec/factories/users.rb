# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { 'random@random.com' }
    password { 'password' }
  end
end
