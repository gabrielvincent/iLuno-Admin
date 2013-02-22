ActiveAdmin.register Book do

	controller do

		def create
			create! do |format|
	        	format.html { redirect_to "/admin/books/" }
	    	end
	   	end

	   	def update
			update! do |format|
	        	format.html { redirect_to "/admin/books/" }
	    	end
	   	end
	end

  index do                            
    column "Livro", :name
    column "Materia", :subject
    default_actions                   
  end

	# form do |f|
	# 	@subjects = Subject.all.map{ |subject| ["#{subject.name}", book.id]}
	# 	f.inputs do       
	# 		f.input :subject, collection: options_for_select(@subjects)
	# 		f.input :name
	# 	end                               
	# 	f.actions                         
	# end

end
