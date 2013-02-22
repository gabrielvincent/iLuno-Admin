ActiveAdmin.register Unit do

	controller do

		def create
			create! do |format|
	        	format.html { redirect_to "/admin/units/" }
	    	end
	   	end

	   	def update
			update! do |format|
	        	format.html { redirect_to "/admin/units/" }
	    	end
	   	end
	end

	index do                            
		column "Unidade", :name           
		default_actions                   
	end 

end
