class MateriasController < ApplicationController
  def index
    @materias = Materia.all
  end

  def show
  	@materia = Materia.find params[:id]
  end

  def new
  	@materia = Materia.new
  end

  def create
  	@materia = Materia.create name:params[:materia][:name]

  	if @materia.save
  	  redirect_to action: 'index', controller: 'materias'
  	else
  	  render 'new'
  	end
  end

  def update

  end

  def destroy

  end
end
