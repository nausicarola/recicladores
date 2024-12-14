class EntregasController < ApplicationController
  before_action :authenticate_user!
  # before_action :set_reciclador_and_material, only: [ :edit, :update, :destroy ]

  def index
    @reciclador = Reciclador.find(params[:recicladore_id])
    @entregas = @reciclador.entregas.page(params[:page]).per(10)
  end

  def new
    @reciclador = Reciclador.find(params[:recicladore_id])
    @entrega = @reciclador.entregas.new
    @materiales = Material.all # Para llenar el combo box
  end

  def create
    @reciclador = Reciclador.find(params[:recicladore_id])
    @entrega = @reciclador.entregas.new(entrega_params)
    if @entrega.save
      redirect_to reciclador_entregas_path(@reciclador), notice: "Entrega registrada exitosamente."
    else
      render :new
    end
  end
  def update
    if @entrega.update(entrega_params)
      redirect_to reciclador_entregas_path(@reciclador), notice: "Entrega actualizada exitosamente."
    else
      render :edit
    end
  end

  private

  def set_reciclador_and_material
    @reciclador = Reciclador.find(params[:recicladore_id])
    @entrega = @reciclador.entregas.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to recicladores_path, alert: "Reciclador o entrega no encontrada."
  end

  def entrega_params
    params.require(:entrega).permit(:material_id, :fecha, :cantidad)
  end
end
