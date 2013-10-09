class CadastradoController < ApplicationController


  def create
      @cadastrado = Cadastrado.new(params[:cadastrado])
      @cadastrado.save
      flash[:sucesso] = I18n.t 'sucesso.cadastro'
      redirect_to root_url
  end

  def list
      @cadastrados = Cadastrado.all
  end

end
