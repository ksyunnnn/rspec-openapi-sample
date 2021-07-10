require 'rails_helper'

RSpec.describe Recruiter, type: :model do
  it "recruiterが作成できること" do
    job_seeker = FactoryBot.build(:job_seeker)
    expect(job_seeker).to be_valid
  end

end
