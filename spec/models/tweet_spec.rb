require 'rails_helper'

RSpec.describe Tweet, type: :model do
  context 'validation tests' do
    it 'should belong to ' do
      expect { should belong_to(:user1) }
    end

    it 'should belong to ' do
      expect { should belong_to(:user2) }
    end
  end
end
