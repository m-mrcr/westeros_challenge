class WesterosFacade

  def house_members(house)
    if westeros.get_house(house).class == Hash
      members = westeros_service.get_house(house)[:data]
        .first[:attributes][:members]
      members.each do |member|
        HouseMember.new(member)
      end
    end
  end

  private

  def westeros_service
    WesterosService.new
  end

end
