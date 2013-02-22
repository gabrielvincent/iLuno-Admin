ActiveAdmin.register Group do

	controller do

		def create
			create! do |format|
	        	format.html { redirect_to "/admin/groups/" }
	    	end
	   	end

	   	def update
			update! do |format|
	        	format.html { redirect_to "/admin/groups/" }
	    	end
	   	end
	end

	index do
	    column "Turma", :name
	    column "Serie", :serie
	    column "Unidade", :unit
	    default_actions                   
	end

	form do |f|
		@series = Serie.all.map{ |serie| ["#{serie.name} - #{serie.unit.name}", serie.id]}
		f.inputs "Turma" do       
			f.input :serie, collection: options_for_select(@series)
			f.input :name
		end                               
		f.actions                         
	end 

end
