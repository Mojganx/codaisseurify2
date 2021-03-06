require 'rails_helper'

RSpec.describe Artist, type: :model do
   describe 'validations' do
       it { is_expected.to validate_presence_of(:name) }
   end

   describe 'association with songs' do
     it { is_expected.to have_many :songs}
    end
end
