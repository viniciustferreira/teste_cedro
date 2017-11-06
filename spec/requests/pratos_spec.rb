require 'rails_helper'

RSpec.describe "Pratos", type: :request do
  describe "GET /pratos" do
    it "works! (now write some real specs)" do
      get pratos_path
      expect(response).to have_http_status(200)
    end
  end
end
