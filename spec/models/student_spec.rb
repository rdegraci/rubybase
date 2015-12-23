RSpec.describe Student, type: :model do

  context "Identification" do
    it "should have a name" do
      student = FactoryGirl.create(:student)
      expect(student.name).to eq("Bob")
    end
  end
  
end
