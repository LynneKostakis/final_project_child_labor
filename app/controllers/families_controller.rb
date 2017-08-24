class FamiliesController < ApplicationController


  def show

    @family = current_parent.family
    

    render("families/show.html.erb")
  end

  
  def edit
    @family = Family.find(params[:id])

    render("families/edit.html.erb")
  end

  def update
    @family = Family.find(params[:id])

    @family.family_name = params[:family_name]

    save_status = @family.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/families/#{@family.id}/edit", "/update_family"
        redirect_to("/families/#{@family.id}", :notice => "Family updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Family updated successfully.")
      end
    else
      render("families/edit.html.erb")
    end
  end

 
end
