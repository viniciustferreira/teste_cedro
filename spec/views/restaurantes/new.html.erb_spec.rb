require 'rails_helper'

RSpec.describe "restaurantes/new", type: :view do
  before(:each) do
    assign(:restaurante, Restaurante.new(
      :nome => "MyString"
    ))
  end

  it "renders new restaurante form" do
    render

    assert_select "form[action=?][method=?]", restaurantes_path, "post" do

      assert_select "input[name=?]", "restaurante[nome]"
    end
  end
end
