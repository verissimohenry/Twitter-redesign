require 'rails_helper'

RSpec.describe Following, type: :model do
  context ' test following model' do
    before do
      @user1 = User.new(email: 'verissimohenry04@gmail.com', fullname: 'henry', password: '123456',
                        profile_photo: 'donat.jpeg', cover_image: 'eric.jpeg').save
      @user2 = User.new(email: 'elvis@gmail.com', fullname: 'elvis', password: '123456',
                        profile_photo: 'https://hajiri.co/uploads/no_image.jpg', cover_image: 'https://i.stack.imgur.com/y9DpT.jpg').save
    end
    it 'return false if followed_id is not provided' do
      @invite = Following.create
      expect(@invite).to_not be_valid
    end

    describe 'validations' do
      it { should validate_presence_of(:followed_id) }
    end
  end
end
