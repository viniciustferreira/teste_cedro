require 'rails_helper'

RSpec.describe "pratos/edit", type: :view do
  before(:each) do
    @restaurante = assign(:restaurante, Restaurante.create!(
      :nome => "MyString"
    ))
    @prato = assign(:prato, Prato.create!(
      :nome => "MyString",
      :restaurante_id => @restaurante.id.to_s,
      :preco => ""
    ))
  end

  it "renders the edit prato form" do
    render

    assert_select "form[action=?][method=?]", prato_path(@prato), "post" do

      assert_select "input[name=?]", "prato[nome]"

      assert_select "input[name=?]", "prato[preco]"
    end
  end
end
