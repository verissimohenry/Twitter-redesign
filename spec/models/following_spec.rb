require 'rails_helper'

RSpec.describe Following, type: :model do
  context ' test following model' do
    before do
      @user1 = User.new(email: 'verissimohenry04@gmail.com', username: 'henry', password: '123456').save
      @user2 = User.new(email: 'elvis@gmail.com', username: 'elvis', password: '123456').save
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
