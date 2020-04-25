require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:agency) { create(:agency) }

  describe 'Validations' do
    it { expect(agency).to validate_presence_of(:name) }
  end
end