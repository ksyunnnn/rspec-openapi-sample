require 'rails_helper'

RSpec.describe RecruiterBasicInformation, type: :model do
  let(:recruiter) { create(:recruiter) }
  it "recruiter_basic_informationが作成できること" do
    recruiter_basic_information = build(:recruiter_basic_information, recruiter_id: recruiter.id, admin: false)
    expect(recruiter_basic_information).to be_valid
  end

end
