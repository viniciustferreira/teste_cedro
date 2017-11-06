require 'rails_helper'

RSpec.describe "pratos/show", type: :view do
  before(:each) do
    @prato = assign(:prato, Prato.create!(
      :nome => "Nome",
      :restaurante_id => "Restaurante",
      :preco => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Restaurante/)
    expect(rendered).to match(//)
  end
end
