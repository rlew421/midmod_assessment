require 'rails_helper'

describe Member do
  it "exists" do
    attrs = {
      name: "Harry Potter",
      role: "student",
      house: "Gryffindor",
      patronus: "stag"
    }

    harry = Member.new(attrs)

    expect(harry).to be_a Member
    expect(harry.name).to eq("Harry Potter")
    expect(harry.role).to eq("student")
    expect(harry.house).to eq("Gryffindor")
    expect(harry.patronus).to eq("stag")
  end
end
