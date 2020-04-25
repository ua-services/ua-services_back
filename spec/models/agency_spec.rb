require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:agency) { create(:agency) }

  describe 'Validations' do
    it { expect(agency).to validate_presence_of(:name) }
    it { expect(agency).to validate_uniqueness_of(:name) }
    it { expect(agency).to validate_uniqueness_of(:email).ignoring_case_sensitivity }
  end

  describe 'Associations' do
    it { expect(agency).to have_many(:employees).through(:employee_informations) }
  end
end
