require 'faker'

FactoryGirl.define do
  factory :article do
    title { "This is my tittle" }
    text { Faker::Lorem.paragraph }
  end
end
