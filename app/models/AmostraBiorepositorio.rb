class AmostraBiorepositorio < ApplicationRecord
  self.table_name = "amostras_biorepositorio"

  # Mapeamento dos atributos para as colunas no banco de dados
  attribute :resp_cadastro, :string
  attribute :id, :integer
  attribute :nome, :string
  attribute :descricao, :string

  attribute :nome_paciente, :string
  attribute :cpf, :string
  attribute :rg, :string
  attribute :nome_coletora, :string
  attribute :projeto, :string

  # Adiciona os novos atributos
  attribute :numero_amostra, :integer
  attribute :data_coleta, :date
  attribute :id_projeto, :integer

  # validates :nome_paciente, presence: true
  # validates :cpf, presence: true
  # validates :rg, presence: true
  # validates :nome_coletora, presence: true
  # validates :projeto, presence: true

  def self.create_from_form(form_params)
    amostra = AmostraBiorepositorio.new(form_params)
    amostra.save
    #amostra
  end
end
