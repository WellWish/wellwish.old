require 'rails_helper'

RSpec.describe "Wishes", type: :request do
  describe "GET /wishes" do
    it "works! (now write some real specs)" do
      get wishes_path
      expect(response).to have_http_status(200)
    end
  end
end
