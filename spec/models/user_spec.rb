require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'returns false if not all params are filled in.' do
      user = User.new(email: 'verissimohenry04@gmail.com', fullname: 'HENRY').save
      expect(user).to eq(false)
    end

    it 'returns false if email is not valid.' do
      user = User.new(email: 'verissimohenry04@gmail.com', fullname: 'HENRY').save
      expect(user).to eq(false)
    end

    it "Can't read a user that has not been created." do
      expect(User.find_by(email: 'elvis')).to eq(nil)
    end

    it 'returns false if udername is not not provided' do
      user = User.new(email: 'verissimohenry04@gmail.com', password: '123456',
                      profile_photo: 'https://hajiri.co/uploads/no_image.jpg', cover_image: 'https://i.stack.imgur.com/y9DpT.jpg').save
      expect(user).to eq(false)
    end

    it 'returns false if password values are less than 6 ' do
      user = User.new(email: 'verissimohenry04@gmail.com', fullname: 'HENRY', password: '123456', profile_photo: 'https://hajiri.co/uploads/no_image.jpg',
                      cover_image: 'https://i.stack.imgur.com/y9DpT.jpg').save
      expect(user).to eq(false)
    end

    describe 'validations' do
      it { should validate_presence_of(:fullname) }
    end
  end
end
