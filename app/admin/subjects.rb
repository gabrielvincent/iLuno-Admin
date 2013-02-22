ActiveAdmin.register Subject do
  	
	controller do

		def submit_and_create_new
		end

		def create
			create! do |format|
	        	format.html { redirect_to "/admin/subjects/" }
	    	end
	   	end

	   	def update
			update! do |format|
	        	format.html { redirect_to "/admin/subjects/" }
	    	end
	   	end
	end

	index do                            
		column "Materia", :name, :sortable => :name      
		default_actions
	end

	  form do |f|                         
	    f.inputs do       
	      f.input :name
	    end                      
	    f.actions do
	    	f.action :submit, :label => "Adicionar"
	    	f.action :submit, :label => "Adicionar e criar outra"
	    	f.action :cancel, :label => "Cancelar", :button_html => { :class => "cancel" }
	    end
	  end 

end
