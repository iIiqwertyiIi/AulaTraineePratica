require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'factory' do
    context 'when using standard factory' do
      it { expect(build(:user)).to be_valid }

      it { expect(create(:user).authentication_token).not_to be_nil }
    end
  end

  describe 'validations' do
    context 'when username is nil' do
      it { expect(build(:user, username: nil)).not_to be_valid }
    end

    context 'when user is too young' do
      it { expect(build(:user, age: 9)).to be_invalid }
    end

    context 'when admin field is nil' do
      it { expect(build(:user, is_admin: nil)).to_not be_valid }
    end

    context 'when admin field is false' do
      it { expect(build(:user, is_admin: false )).to be_valid }
    end

    context 'when username already exists' do
      before { create(:user, username: "Original") }

      it { expect(build(:user, username: "Original")).not_to be_valid }
    end
  end

end
