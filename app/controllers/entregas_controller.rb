class EntregasController < ApplicationController
  before_action :authenticate_user!
  before_action :set_reciclador_and_material

  def index
    @entregas = @reciclador.entregas.paginate(page: params[:page], per_page: 10)
  end

  def new
    @entrega = @reciclador.entregas.build
  end

  def create
    @entrega = @reciclador.entregas.build(entrega_params)
    if @entrega.save
      redirect_to reciclador_entregas_path(@reciclador), notice: "Entrega registrada exitosamente."
    else
      render :new
    end
  end

  private

  def set_reciclador_and_material
    @reciclador = Reciclador.find(params[:reciclador_id])
  end

  def entrega_params
    params.require(:entrega).permit(:material_id, :fecha, :cantidad)
  end
end
