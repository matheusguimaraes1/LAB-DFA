class AmostraBiorepositorio < ApplicationRecord
  self.table_name = "amostras_biorepositorio"

  # Mapeamento dos atributos para as colunas no banco de dados
  attribute :resp_cadastro, :string
  attribute :id, :integer
  attribute :nome, :string
  attribute :descricao, :string
end
