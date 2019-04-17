require "rails_helper"
require './app/services/doc/create'

RSpec.describe Doc do

  describe "Create new doc" do

    before(:each) do
      @service = Doc::Create.new(
        name: Faker::Movies::StarWars.character,
        specialty: Faker::Lorem.word,
        zip: Faker::Address.zip_code,
        review: '8'
      )
    end

    it "Checks if an org is created" do
      @service.perform

      expect(Doc.count).to eq(1)
    end

  end
end