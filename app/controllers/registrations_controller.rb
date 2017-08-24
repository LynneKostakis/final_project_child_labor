class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    super
    if resource.persisted?
      
      
        @findFamily = Family.where(:family_name=>params[:family_name]).take(1)
        
        @family = nil
        
        if @findFamily[0] == nil 
          @family = Family.new
          @family.family_name = params[:family_name]
          @family.save
          resource.family_id = @family.id
        else 
          @family = @findFamily[0]
          resource.family_id = @family.id
        end        
        
        resource.save
    end
    
  end

  def update
    super
    
        if resource.persisted?
      
      
        @family = Family.find(:family_name=>params[:family_name])
        if @family == nil 
          @family = Family.new
          @family.family_name = params[:family_name]
          @family.save
        end
        
        resource.family_id = @family.id
        resource.save
    end
    
  end
end 