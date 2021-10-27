require 'rails_helper'

RSpec.describe Game, type: :model do
  describe 'factory' do
    it { expect(build(:game)).to be_valid }
  end

  describe 'validations' do
    context 'when title is too short' do
      it { expect(build(:game, title: 'mi')).not_to be_valid }
    end

    context "when release is in future" do
      it { expect(build(:game, release: "20-04-2022")).not_to be_valid }
    end
  end
end