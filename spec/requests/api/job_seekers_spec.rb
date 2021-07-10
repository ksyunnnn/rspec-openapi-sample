require 'rails_helper'

RSpec.describe "Api::JobSeekers", type: :request do
  let(:job_seekers) { 10.times { create(:job_seeker) } }
  let(:job_seeker) { create(:job_seeker) }
  describe "GET /api/job_seekers" do
    it "job_seekerの一覧が取得できること" do
      job_seekers
      get api_job_seekers_path
      json = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(json["jobSeekers"].length).to eq(10)
    end
  end
  describe "POST /api/job_seekers" do
    it "job_seekerが作成できること" do
      headers = { "CONTENT_TYPE" => "application/json" }
      post api_job_seekers_path, params: { job_seeker: {} }, headers: headers
      expect(response).to have_http_status(200)
    end
  end
  describe "GET /api/job_seekers/:id" do
    it "job_seeker詳細が取得できること" do
      get api_job_seeker_path(job_seeker)
      json = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(json.length).to eq(1)
    end
  end

end
