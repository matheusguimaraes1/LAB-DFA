class AcessoUsuario < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  def authenticate(password)
    self.password == password
  end
end #continuar a partir daqui na implementação da autenticação dos usuários em banco de dados.
