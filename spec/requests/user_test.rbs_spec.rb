require 'rails_helper'

RSpec.describe "UserTest.rbs", type: :request do
  describe "GET /user_test.rbs" do
    it "works! (now write some real specs)" do
      get user_test.rbs_path
      expect(response).to have_http_status(200)
    end
  end
end
