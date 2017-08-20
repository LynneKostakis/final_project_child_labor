class KidsController < ApplicationController
  def index
    @kids = Kid.all

    render("kids/index.html.erb")
  end

  def show
    @kid = Kid.find(params[:id])

    render("kids/show.html.erb")
  end

  def new
    @kid = Kid.new

    render("kids/new.html.erb")
  end

  def create
    @kid = Kid.new

    @kid.kid_name = params[:kid_name]

    save_status = @kid.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/kids/new", "/create_kid"
        redirect_to("/kids")
      else
        redirect_back(:fallback_location => "/", :notice => "Kid created successfully.")
      end
    else
      render("kids/new.html.erb")
    end
  end

  def edit
    @kid = Kid.find(params[:id])

    render("kids/edit.html.erb")
  end

  def update
    @kid = Kid.find(params[:id])

    @kid.kid_name = params[:kid_name]

    save_status = @kid.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/kids/#{@kid.id}/edit", "/update_kid"
        redirect_to("/kids/#{@kid.id}", :notice => "Kid updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Kid updated successfully.")
      end
    else
      render("kids/edit.html.erb")
    end
  end

  def destroy
    @kid = Kid.find(params[:id])

    @kid.destroy

    if URI(request.referer).path == "/kids/#{@kid.id}"
      redirect_to("/", :notice => "Kid deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Kid deleted.")
    end
  end
end
