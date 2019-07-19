class WesterosFacade

  def house_members(house)
    if westeros_service.get_house(house).class == Hash
      members = westeros_service.get_house(house)[:data]
        .first[:attributes][:members]
      members.map do |member|
        HouseMember.new(member)
      end
    end
  end

  def houses
    [
      ['Stark', 'stark'],
      ['Lannister', 'lannister'],
      ['Targaryen', 'targaryen'],
      ['Tyrell', 'tyrell'],
      ['Greyjoy', 'greyjoy']
    ]
  end

  private

  def westeros_service
    WesterosService.new
  end

end
