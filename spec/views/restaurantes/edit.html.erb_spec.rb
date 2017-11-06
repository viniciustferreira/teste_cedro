require 'rails_helper'

RSpec.describe "restaurantes/edit", type: :view do
  before(:each) do
    @restaurante = assign(:restaurante, Restaurante.create!(
      :nome => "MyString"
    ))
  end

  it "renders the edit restaurante form" do
    render

    assert_select "form[action=?][method=?]", restaurante_path(@restaurante), "post" do

      assert_select "input[name=?]", "restaurante[nome]"
    end
  end
end
