class DocentesController < ApplicationController
	#CRUD create,destroy,edit/update
	def index
		signed_in_admin
		@docentes = Docente.all
	end
	def create
		signed_in_admin
		@docente = Docente.new(docente_params)
		@docente.save
		redirect_to docentes_path
	end
	def destroy
		signed_in_admin
		@docente=Docente.find_by_id(params[:id])
  		@docente.destroy
  		redirect_to docentes_path
	end
	def edit
		signed_in_admin
		@docente = Docente.find_by_id(params[:id])
	end
	def update
		signed_in_admin
		@docente = Docente.find(params[:id])
		if @docente.update_attributes(docente_params)
			
		end
		redirect_to docentes_path
	end

	private

  def docente_params
    params.require(:docente).permit(:id,:identificacion, :nombres, :apellidos, :genero)
  end
end
