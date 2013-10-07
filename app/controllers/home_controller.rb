class HomeController < ApplicationController


  def index
    @cadastrado = Cadastrado.new
  end


  def sendmail

    @usuario = Cadastrado.new(params[:cadastrado])
    @usuario.save

    message = NotifierController.sendEmail(@usuario)
    message.deliver

    redirect_to root_url

  end

end
