require 'rails_helper'

RSpec.describe Automobile, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :brand }
    it { is_expected.to have_db_column :model }
    it { is_expected.to have_db_column :year }
    it { is_expected.to have_db_column :price }
  end
end
