class CursosController < ApplicationController
	#CRUD create,destroy,edit/update
	def index
		signed_in_admin
		@cursos = Curso.all
	end
	def create
		signed_in_admin
		@curso = Curso.new(curso_params)
		@curso.save
		redirect_to cursos_path
	end
	def destroy
		signed_in_admin
		@curso=Curso.find_by_id(params[:id])
  		@curso.destroy
  		redirect_to cursos_path
	end
	def edit
		signed_in_admin
		@curso = Curso.find_by_id(params[:id])
	end
	def update
		signed_in_admin
		@curso = Curso.find(params[:id])
		if @curso.update_attributes(curso_params)
			
		end
		redirect_to cursos_path
	end

	private

  def curso_params
    params.require(:curso).permit(:id,:codigo, :nombre, :observaciones)
  end
end
