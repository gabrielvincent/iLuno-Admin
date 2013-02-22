ActiveAdmin.register Teacher do

	controller do

		def create
			create! do |format|
	        	format.html { redirect_to "/admin/teachers/" }
	    	end
	   	end

	   	def update
			update! do |format|
	        	format.html { redirect_to "/admin/teachers/" }
	    	end
	   	end
	end

  index do                            
		column "Professor", :name, :sortable => :name      
		default_actions                   
	end 
end
