class PhoenixSearch

  def initialize(house)
    @house = house
  end

  def member_count
    members.count
  end

  def members
    service = HarrypotterService.new
    @members ||= service.members_by_house(house).map do |member_data|
      Member.new(member_data)
    end
  end

  private

  attr_reader :house
end
