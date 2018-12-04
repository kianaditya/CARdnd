require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'db table' do
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :encrypted_password }
    it { is_expected.to have_db_column :firstname }
    it { is_expected.to have_db_column :lastname }
    it { is_expected.to have_db_column :address }
    it { is_expected.to have_db_column :drivingage }
    it { is_expected.to have_db_column :age }
    it { is_expected.to have_db_column :about }
    it { is_expected.to have_db_column :phone }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :firstname }
    it { is_expected.to validate_presence_of :lastname }
    it { is_expected.to validate_presence_of :address }
    it { is_expected.to validate_presence_of :drivingage }
    it { is_expected.to validate_presence_of :age }
  end

  describe FactoryBot do 
    it 'should be valid' do
      expect(FactoryBot.create(:user)).to be_valid
    end
  end
  
end

