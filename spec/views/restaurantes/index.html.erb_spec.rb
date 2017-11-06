require 'rails_helper'

RSpec.describe "restaurantes/index", type: :view do
  before(:each) do
    assign(:restaurantes, [
      Restaurante.create!(
        :nome => "Nome"
      ),
      Restaurante.create!(
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of restaurantes" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
