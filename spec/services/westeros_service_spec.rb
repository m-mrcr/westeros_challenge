require 'rails_helper'

describe WesterosService do
  it "finds a house" do

    house = "Greyjoy"

    api = WesterosService.new
    members = api.get_house(house)

    expect(members.class).to eq(Hash)
    expect(members[:data].first[:id]).to eq('5')
    expect(members[:data].first[:type]).to eq("house")
    expect(members[:data].first[:attributes][:name]).to eq("Greyjoy")
  end
end
