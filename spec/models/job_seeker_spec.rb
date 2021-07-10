require 'rails_helper'

RSpec.describe JobSeeker, type: :model do
  let(:recruiter) { create(:recruiter) }
  it "job_seekerが作成できること" do
    job_seeker = FactoryBot.build(:job_seeker)
    expect(job_seeker).to be_valid
  end

  it "job_seekerがrecruiterと紐付け出来ること" do
    job_seeker = FactoryBot.create(:job_seeker, recruiter_id: recruiter.id)
    job_seeker.recruiter_id = recruiter.id
    expect(job_seeker).to be_valid
  end

end
