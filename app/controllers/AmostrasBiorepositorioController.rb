# app/controllers/amostras_biorepositorio_controller.rb

class AmostrasBiorepositorioController < ApplicationController
  def index
    data = AmostraBiorepositorio.select(:numero_amostra, :data_coleta, :resp_cadastro)
    render json: data
  end

  def retirar_amostras
    AmostraBiorepositorio.destroy_all(id: params[:ids])
    redirect_to amostras_biorepositorio_path, notice: "Amostras retiradas com sucesso."
  end
end
