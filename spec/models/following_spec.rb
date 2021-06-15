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

    describe 'validates Follow associations' do
      it 'validates if user is added to users followings' do
        Following.create(follower: @user1, followed: @user2)
        expect(already_follow?).to_not eq(true)
      end
    end
  
    describe 'associations' do
      it 'should belong to follower' do
        expect { should belong_to(:follower) }
      end
    end
  end
end
