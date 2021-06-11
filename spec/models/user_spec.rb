require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'returns false if not all params are filled in.' do
      user = User.new(email: 'verissimohenry04@gmail.com', username: 'HENRY').save
      expect(user).to eq(false)
    end

    it 'returns false if email is not valid.' do
      user = User.new(email: 'verissimohenry04@gmail.com', username: 'HENRY').save
      expect(user).to eq(false)
    end

    it "Can't read a user that has not been created." do
      expect(User.find_by(email: 'elvis')).to eq(nil)
    end

    it 'returns false if udername is not provided' do
      user = User.new(email: 'verissimohenry04@gmail.com', password: '123456').save
      expect(user).to eq(false)
    end

    it 'returns false if password values are less than 6 ' do
      user = User.new(email: 'verissimohenry04@gmail.com', username: 'HENRY', password: '12345').save
      expect(user).to eq(false)
    end
  end
end
