class Api::JobSeekerBasicInformationsController < ApplicationController
  def create
    job_seeker_basic_information = JobSeekerBasicInformation.create(job_seeker_basic_information_params)
    render json: job_seeker_basic_information
  end

  def show
    job_seeker_basic_information = JobSeekerBasicInformation.find(params[:id])
    render json: job_seeker_basic_information
  end

  private

  def job_seeker_basic_information_params
    params.require(:job_seeker_basic_information).permit(:job_seeker_id, :name, :age)
  end
end
