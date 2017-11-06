require 'rails_helper'

RSpec.describe "restaurantes/show", type: :view do
  before(:each) do
    @restaurante = assign(:restaurante, Restaurante.create!(
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
  end
end
