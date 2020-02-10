class PhoenixSearch

  def initialize(house)
    @house = house
  end

  def member_count
    members.count
  end

  def members
    service = HarrypotterService.new
    service.members_by_house(house).map do |member_data|
      Member.new(member_data)
    end

    # existing code
    # conn = Faraday.new(url: "https://www.potterapi.com/v1/") do |faraday|
    #   faraday.adapter Faraday.default_adapter
    # end
    #
    # response = conn.get("characters?key=#{ENV['HP_API_KEY']}&house=Gryffindor&orderOfThePhoenix=true")
    #
    # member_search_data = JSON.parse(response.body, symbolize_names: true)
    #
    # member_search_data.map do |member_data|
    #   Member.new(member_data)
    # end
  end

  private

  attr_reader :house
end
