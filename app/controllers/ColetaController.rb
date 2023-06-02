class ColetaController < ApplicationController
  def new
    render 'coleta'
    amostra = AmostraBiorepositorio.new
    # @amostra = AmostraBiorepositorio.new(numero_amostra: params[:cpf], data_coleta: Date.today, id_projeto: params[:projeto], resp_cadastro: params[:nome_coletora], nome_paciente: params[:nome_paciente])
    
    
  end
  def create
    @amostra = AmostraBiorepositorio.new(numero_amostra: params[:cpf], data_coleta: Date.today, id_projeto: params[:projeto], resp_cadastro: params[:nome_coletora], nome_paciente: params[:nome_paciente])
   
    if @amostra.save
      #flash[:success] 
      print "Dados Enviados com sucesso"
      redirect_to '/coleta'
    else
       flash[:success] = "Dados não gravados pois houve algum erro no Controller :("
    end
  end
 
end
