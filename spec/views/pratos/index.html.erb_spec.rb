require 'rails_helper'

RSpec.describe "pratos/index", type: :view do
  before(:each) do
    assign(:pratos, [
      Prato.create!(
        :nome => "Nome",
        :restaurante_id => "Restaurante",
        :preco => ""
      ),
      Prato.create!(
        :nome => "Nome",
        :restaurante_id => "Restaurante",
        :preco => ""
      )
    ])
  end

  it "renders a list of pratos" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 4
  end
end
