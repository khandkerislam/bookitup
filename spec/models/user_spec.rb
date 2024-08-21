require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    let(:user) { create(:user) }

    it 'validates uniqueness of email' do
      duplicate_email = build(:user, email: user.email)
      expect(duplicate_email.valid?).to be_falsey
      expect(duplicate_email.errors[:email]).to include("has already been taken")
    end

    it 'validates uniqueness of card_number' do
      duplicate_card_number = build(:user, card_number: user.card_number)
      expect(duplicate_card_number.valid?).to be_falsey
      expect(duplicate_card_number.errors[:card_number]).to include("has already been taken")
    end

    it 'validates presence of role' do
      absent_role = build(:user, role: nil)
      expect(absent_role.valid?).to be_falsey
      expect(absent_role.errors[:role]).to include("can't be blank")
    end

    it 'validates presence of password' do
      absent_password = build(:user, password: nil)
      expect(absent_password.valid?).to be_falsey
      expect(absent_password.errors[:password]).to include("can't be blank")
    end
  end
end
