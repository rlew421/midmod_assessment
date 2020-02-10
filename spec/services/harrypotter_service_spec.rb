describe HarrypotterService do
  context "instance methods" do
    it "returns member data" do
      search = subject.members_by_house("Gryffindor")
      expect(search).to be_an Array
      expect(search.count).to eq 21
      member_data = search[1]

      expect(member_data).to have_key :name
      expect(member_data).to have_key :role
      expect(member_data).to have_key :house
      expect(member_data).to have_key :patronus
    end
  end
end
