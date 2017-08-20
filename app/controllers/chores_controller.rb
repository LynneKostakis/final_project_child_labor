class ChoresController < ApplicationController
  def index
    @chores = Chore.all

    render("chores/index.html.erb")
  end

  def show
    @assignment = Assignment.new
    @chore = Chore.find(params[:id])

    render("chores/show.html.erb")
  end

  def new
    @chore = Chore.new

    render("chores/new.html.erb")
  end

  def create
    @chore = Chore.new

    @chore.chore_name = params[:chore_name]
    @chore.chore_categories_id = params[:chore_categories_id]
    @chore.chore_value = params[:chore_value]

    save_status = @chore.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/chores/new", "/create_chore"
        redirect_to("/chores")
      else
        redirect_back(:fallback_location => "/", :notice => "Chore created successfully.")
      end
    else
      render("chores/new.html.erb")
    end
  end

  def edit
    @chore = Chore.find(params[:id])

    render("chores/edit.html.erb")
  end

  def update
    @chore = Chore.find(params[:id])

    @chore.chore_name = params[:chore_name]
    @chore.chore_categories_id = params[:chore_categories_id]
    @chore.chore_value = params[:chore_value]

    save_status = @chore.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/chores/#{@chore.id}/edit", "/update_chore"
        redirect_to("/chores/#{@chore.id}", :notice => "Chore updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Chore updated successfully.")
      end
    else
      render("chores/edit.html.erb")
    end
  end

  def destroy
    @chore = Chore.find(params[:id])

    @chore.destroy

    if URI(request.referer).path == "/chores/#{@chore.id}"
      redirect_to("/", :notice => "Chore deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Chore deleted.")
    end
  end
end
