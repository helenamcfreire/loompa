class HomeController < ApplicationController


  def index
    @cadastrado = Cadastrado.new
  end

end
