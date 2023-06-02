class AmostrasController < ApplicationController
  def create
    amostra = AmostraBiorepositorio.new(numero_amostra: params[:numero], data_coleta: params[:data], id_projeto: params[:projeto], resp_cadastro: params[:pessoa])
    if amostra.save
      flash[:notice] = "Amostra Registrada"
    else
      flash[:notice] = "Amostra não foi registrada por algum motivo :("
    end
  end
end
