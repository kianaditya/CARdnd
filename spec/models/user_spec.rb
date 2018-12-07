require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'db table' do
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :encrypted_password }
    it { is_expected.to have_db_column :first_name }
    it { is_expected.to have_db_column :last_name }
    it { is_expected.to have_db_column :address }
    it { is_expected.to have_db_column :driving_age }
    it { is_expected.to have_db_column :age }
    it { is_expected.to have_db_column :about }
    it { is_expected.to have_db_column :phone }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :first_name }
    it { is_expected.to validate_presence_of :last_name }
    it { is_expected.to validate_presence_of :address }
    it { is_expected.to validate_presence_of :driving_age }
    it { is_expected.to validate_presence_of :age }
  end

  describe 'Associations' do
    it { should have_many(:automobile) }
  end
  
  describe 'Attachments' do
    it 'is valid' do
      subject.image.attach(io: File.open(fixture_path + '/dummy_image.jpg'), filename: 'attachment.jpg', content_type: 'image/jpg')
      expect(subject.image).to be_attached
    end
  end



  describe FactoryBot do 
    it 'should be valid' do
      expect(FactoryBot.create(:user)).to be_valid
    end
  end
  
end

