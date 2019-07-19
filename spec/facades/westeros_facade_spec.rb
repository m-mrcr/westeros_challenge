require 'rails_helper'

describe WesterosFacade do
  it "find's a house's members" do
    house = "Greyjoy"

    westeros_facade = WesterosFacade.new
    members = westeros_facade.house_members(house)

    expect(members.class).to eq(Array)
    expect(members.first.class).to eq(HouseMember)
    expect(members.first.id.class).to eq(Integer)
    expect(members.first.name.class).to eq(String)
  end
end
