class MateriasController < ApplicationController
  def index
    @materias = Materia.all
  end

  def show
  	@materia = Materia.find params[:id]
  end

  def new

  end

  def create

  end

  def update

  end

  def destroy

  end
end
