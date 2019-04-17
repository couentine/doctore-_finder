require 'faker'

FactoryBot.define do
  
  factory :user do
     factory :user do
        email "aabb@hh.de"
        password "ruby"
        password_confrimation "ruby"
         technique   FactoryBot.create :technique
      end


  end
