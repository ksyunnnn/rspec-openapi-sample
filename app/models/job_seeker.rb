class JobSeeker < ApplicationRecord
  has_many :job_seeker_basic_informations, dependent: :destroy
end
