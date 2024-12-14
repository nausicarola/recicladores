class RecicladoresController < ApplicationController
  before_action :authenticate_user!
  before_action :set_reciclador, only: [ :show, :edit, :update, :destroy ]

  def index
    @recicladores = if params[:search].present?
      Reciclador.where("nombre ILIKE ?", "%#{params[:search]}%").page(params[:page]).per(10)
    else
      Reciclador.page(params[:page]).per(10)
    end
  end

  def show
    @reciclador = Reciclador.find(params[:id])
    @materiales = @reciclador.materiales.paginate(page: params[:page], per_page: 10)
  end

  def new
    @reciclador = Reciclador.new
  end

  def create
    @reciclador = Reciclador.new(reciclador_params)
    if @reciclador.save
      redirect_to recicladores_path, notice: "Reciclador creado exitosamente."
    else
      render :new
    end
  end

  def edit
    @reciclador = Reciclador.find(params[:id])
    puts "aqui #{@reciclador.nombre}"
  end

  def update
    @reciclador = Reciclador.find(params[:id])
    if @reciclador.update(reciclador_params)
      redirect_to recicladores_path, notice: "Reciclador actualizado exitosamente."
    else
      render :edit
    end
  end

  def destroy
    @reciclador = Reciclador.find(params[:id])
    @reciclador.destroy
    redirect_to recicladores_path, notice: "Reciclador eliminado exitosamente."
  end

  private

  def reciclador_params
    params.require(:reciclador).permit(:nombre, :telefono, :direccion, :email)
  end

  def set_reciclador
    @reciclador = Reciclador.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to recicladores_path, alert: "Reciclador no encontrado."
  end
end
