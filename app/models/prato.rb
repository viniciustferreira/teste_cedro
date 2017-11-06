class Prato
  include Mongoid::Document
  field :restaurante_id, type: String
  field :nome, type: String
  field :preco, type: BigDecimal

  def nome_restaurante
    if /^[0-9a-fA-F]{24}$/.match(restaurante_id)
      Restaurante.find(restaurante_id).nome
    end
  end
end
