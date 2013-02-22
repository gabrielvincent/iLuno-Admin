ActiveAdmin.register Lecture do

	controller do

		def create
			create! do |format|
	        	format.html { redirect_to "/admin/lectures/" }
	    	end
	   	end

	   	def update
			update! do |format|
	        	format.html { redirect_to "/admin/lectures/" }
	    	end
	   	end
	end

	index do
	    column "Materia", :subject, :sortable
	    column "Turma", :group, :sortable
	    column "Professor", :teacher, :sortable
	    column "Livro", :book
	    column "Serie", :serie
	    column "Unidade", :unit
	    default_actions                   
	end

	form do |f|
		@groups = Group.all.map{ |group| ["#{group.name} - #{group.serie.name} - #{group.serie.unit.name}", group.id]}
		f.inputs "Aula" do

			f.input :starts, :label => "Inicio", :as => :time_select, :labels => {:hour => "Hora", :minute => "Minuto"}
			f.input :ends, :label => "Termino", :as => :time_select, :labels => {:hour => "Hora", :minute => "Minuto"}
			f.input :subject, :label => "Materia"
			f.input :group, collection: options_for_select(@groups), :label => "Turma"
			f.input :teacher, :label => "Professor"
			f.input :book, :label => "Livro"

		end                               
		f.actions                         
	end 

end
