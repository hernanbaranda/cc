class IngresosController < ApplicationController

  def new
    @ingreso = Ingreso.new
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
    @ingresos = @user.ingresos.paginate(page: params[:page])
  end
end
