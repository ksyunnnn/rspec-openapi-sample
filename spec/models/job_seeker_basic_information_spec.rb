require 'rails_helper'

RSpec.describe JobSeekerBasicInformation, type: :model do
  let(:job_seeker) { create(:job_seeker) }
  it "job_seeker_basic_informationが作成できること" do
    job_seeker_basic_information = build(:job_seeker_basic_information, job_seeker_id: job_seeker.id)
    expect(job_seeker_basic_information).to be_valid
  end
end
