class ApplicationController < ActionController::Base
  def login
    if request.post?  # Verifica se o formulário foi enviado via POST
      usuario = params[:usuario]
      senha = params[:senha]

      # Verifique as credenciais do usuário (substitua esta lógica com sua própria autenticação)
      if usuario == "admin" && senha == "346722"
        # Se as credenciais estiverem corretas, redirecione para a página de sucesso ou faça a lógica necessária
        redirect_to root_path, notice: "Login bem-sucedido!"
      else
        # Se as credenciais estiverem incorretas, redirecione para a página de login com uma mensagem de erro
        redirect_to login_path, alert: "Usuário ou senha inválidos!"
      end
    end
    #head :no_content
    #render "login"
  end
end
