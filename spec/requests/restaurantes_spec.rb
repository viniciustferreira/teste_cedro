require 'rails_helper'

RSpec.describe "Restaurantes", type: :request do
  describe "GET /restaurantes" do
    it "works! (now write some real specs)" do
      get restaurantes_path
      expect(response).to have_http_status(200)
    end
  end
end
