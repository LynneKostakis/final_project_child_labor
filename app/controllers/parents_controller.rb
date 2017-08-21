class ParentsController < ApplicationController
  def index
    @q = Parent.ransack(params[:q])
    @parents = @q.result(:distinct => true).includes(:assignments, :family).page(params[:page]).per(10)

    render("parents/index.html.erb")
  end

  def show
    @assignment = Assignment.new
    @parent = Parent.find(params[:id])

    render("parents/show.html.erb")
  end

  def new
    @parent = Parent.new

    render("parents/new.html.erb")
  end

  def create
    @parent = Parent.new

    @parent.parent_name = params[:parent_name]
    @parent.family_id = params[:family_id]

    save_status = @parent.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/parents/new", "/create_parent"
        redirect_to("/parents")
      else
        redirect_back(:fallback_location => "/", :notice => "Parent created successfully.")
      end
    else
      render("parents/new.html.erb")
    end
  end

  def edit
    @parent = Parent.find(params[:id])

    render("parents/edit.html.erb")
  end

  def update
    @parent = Parent.find(params[:id])

    @parent.parent_name = params[:parent_name]
    @parent.family_id = params[:family_id]

    save_status = @parent.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/parents/#{@parent.id}/edit", "/update_parent"
        redirect_to("/parents/#{@parent.id}", :notice => "Parent updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Parent updated successfully.")
      end
    else
      render("parents/edit.html.erb")
    end
  end

  def destroy
    @parent = Parent.find(params[:id])

    @parent.destroy

    if URI(request.referer).path == "/parents/#{@parent.id}"
      redirect_to("/", :notice => "Parent deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Parent deleted.")
    end
  end
end
