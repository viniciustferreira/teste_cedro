require 'rails_helper'

RSpec.describe "pratos/new", type: :view do
  before(:each) do
    assign(:prato, Prato.new(
      :nome => "MyString",
      :restaurante_id => "MyString",
      :preco => ""
    ))
  end

  it "renders new prato form" do
    render

    assert_select "form[action=?][method=?]", pratos_path, "post" do

      assert_select "input[name=?]", "prato[nome]"

      assert_select "input[name=?]", "prato[preco]"
    end
  end
end
