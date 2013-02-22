ActiveAdmin.register Serie do

  index do                            
    column "Serie", :name
    column "Unidade", :unit, :sortable
    default_actions                   
  end

end
