# app/controllers/busca_controller.rb

class BuscaController < ApplicationController
  def index
    @resultados = []
  end

  def busca_amostra
    search_query = params[:search_query]
    @resultados = AmostraBiorepositorio.where("numero_amostra LIKE ?", "%#{search_query}%")
  end
end
