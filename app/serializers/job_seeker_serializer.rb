class JobSeekerSerializer < ActiveModel::Serializer
  has_one :job_seeker_basic_informations
  attributes :id
  class JobSeekerBasicInformationSerializer < ActiveModel::Serializer
    attributes :name, :age
  end
end
