# app/controllers/home_controller.rb
class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @recicladores_count = Reciclador.count
    @entregas_count = Entrega.count
  end
end
