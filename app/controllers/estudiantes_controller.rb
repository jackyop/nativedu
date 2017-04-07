class EstudiantesController < ApplicationController
	#CRUD create,destroy,edit/update
	def index
		signed_in_admin
		@estudiantes = Estudiante.all
	end
	def create
		signed_in_admin
		@estudiante = Estudiante.new(estudiante_params)
		@estudiante.save
		redirect_to estudiantes_path
	end
	def destroy
		signed_in_admin
		@estudiante=Estudiante.find_by_id(params[:id])
  		@estudiante.destroy
  		redirect_to estudiantes_path
	end
	def edit
		signed_in_admin
		@estudiante = Estudiante.find_by_id(params[:id])
	end
	def update
		signed_in_admin
		@estudiante = Estudiante.find(params[:id])
		if @estudiante.update_attributes(estudiante_params)
			
		end
		redirect_to estudiantes_path
	end

	private

  def estudiante_params
    params.require(:estudiante).permit(:id,:identificacion, :nombres, :apellidos, :genero)
  end
end
