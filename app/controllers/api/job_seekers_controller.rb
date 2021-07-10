class Api::JobSeekersController < ApplicationController
  def index
    job_seekers = JobSeeker.all
    render json: job_seekers
  end

  def create
    job_seeker = JobSeeker.create()
    render json: job_seeker
  end

  def show
    job_seeker = JobSeeker.find(params[:id])
    render json: job_seeker
  end
end
