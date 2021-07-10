require 'rails_helper'

RSpec.describe "Api::JobSeekerBasicInformations", type: :request do
  let(:job_seeker) { create(:job_seeker) }
  describe "POST /api/job_seeker_basic_informations" do
    it "job_seeker_basic_informationが作成できること" do
      headers = { "CONTENT_TYPE" => "application/json" }
      params = {
        "job_seeker_basic_information": {
          "name": "らんてくん",
          "age": 20 ,
          "job_seeker_id": job_seeker.id
        }
      }.to_json
      post api_job_seeker_basic_informations_path, params: params, headers: headers
      json = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(json["jobSeekerBasicInformation"]["name"]).to eq("らんてくん")
      expect(JobSeekerBasicInformation.count).to eq(1)
    end
  end
  describe "GET /api/job_seeker_basic_information/:id" do
    let(:job_seeker_basic_information) { create(:job_seeker_basic_information, job_seeker_id: job_seeker.id, name: "らんてくんMk2") }
    it "job_seeker_basic_informationの詳細が取得できること" do
      get api_job_seeker_basic_information_path(job_seeker_basic_information)
      json = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(json["jobSeekerBasicInformation"]["name"]).to eq("らんてくんMk2")
    end
  end

end
