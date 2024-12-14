class MaterialesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_reciclador

  def index
    @materiales = if params[:search].present?
      @reciclador.materiales.where("nombre ILIKE ?", "%#{params[:search]}%").paginate(page: params[:page], per_page: 10)
    else
      @materiales = @reciclador.materiales.page(params[:page]).per(10)
    end
  end

  def new
    @material = @reciclador.materiales.build
  end

  def create
    @material = @reciclador.materiales.build(material_params)
    if @material.save
      redirect_to reciclador_materiales_path(@reciclador), notice: "Material creado exitosamente."
    else
      render :new
    end
  end

  def edit
    @material = @reciclador.materiales.find(params[:id])
  end

  def update
    @material = @reciclador.materiales.find(params[:id])
    if @material.update(material_params)
      redirect_to reciclador_materiales_path(@reciclador), notice: "Material actualizado exitosamente."
    else
      render :edit
    end
  end

  def destroy
    @material = @reciclador.materiales.find(params[:id])
    @material.destroy
    redirect_to reciclador_materiales_path(@reciclador), notice: "Material eliminado exitosamente."
  end

  private

  def set_reciclador
    @reciclador = Reciclador.find(params[:recicladore_id])
  end

  def material_params
    params.require(:material).permit(:nombre, :descripcion)
  end
end
