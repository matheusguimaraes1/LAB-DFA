class HomeController < ApplicationController
  def cadastrar_nova_amostra
    render 'cadastraNovaAmostra'
  end

  def retirar_amostra
    render 'retirarAmostra'
  end

  def busca_amostra
    # Lógica para buscar os resultados no banco de dados ou definir um valor padrão
    @resultados = AmostraBiorepositorio.all

    render 'busca_amostra'
  end

end
