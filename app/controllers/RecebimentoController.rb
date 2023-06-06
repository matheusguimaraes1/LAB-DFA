class RecebimentoController < ApplicationController
  def received
    @amostras = AmostraBiorepositorio.all
    @registros = []
    render 'recebimento', locals: { amostras: AmostraBiorepositorio.pluck(:nome_coletora), registros: @registros }
  end

  def filtrar
    @amostras = AmostraBiorepositorio.all
    @registros = AmostraBiorepositorio.where(nome_coletora: params[:coletora])
    render 'recebimento', locals: { amostras: AmostraBiorepositorio.pluck(:nome_coletora), registros: @registros }
  end
end
