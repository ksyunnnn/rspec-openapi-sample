require 'rails_helper'

RSpec.describe Company, type: :model do
  it "companyが作成出来ること" do
    company = FactoryBot.build(:company)
    expect(company).to be_valid
  end
end
