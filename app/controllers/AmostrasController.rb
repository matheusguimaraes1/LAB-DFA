require "action_controller/railtie"


class AmostrasController < ApplicationController
  def create
    amostra = AmostraBiorepositorio.new(numero_amostra: params[:numero], data_coleta: params[:data], id_projeto: params[:projeto], resp_cadastro: params[:pessoa], tipo_material: params[:tipo_amostra])
    if amostra.save
      flash[:notice] = "Amostra cadastrada com sucesso!"
      redirect_to cadastrar_nova_amostra_path # Altere para a página correta de destino
    else
      flash[:notice] = "Amostra não foi registrada por algum motivo :("
      redirect_to new_amostra_path # Altere para a página correta de destino
    end
  end
end
