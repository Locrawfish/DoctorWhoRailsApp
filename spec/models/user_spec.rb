require 'rails_helper'

describe User do
  let(:user) { User.new }
  it 'exists' do
    expect(user).to_not eq nil
  end

  describe '#username' do
    username_input = "locrawfish"
    it 'does not return nil if username given' do
      expect(user.username(username_input)).to_not eq nil
    end

    it 'returns input from user for username' do
      expect(user.username(username_input)).to eq username_input
    end
  end
end
