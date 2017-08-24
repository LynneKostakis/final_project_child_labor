class AssignmentsController < ApplicationController
  def index
    @current_assignments = current_parent.assignments
    @assignments = @current_assignments.parent




    render("assignments/index.html.erb")
  end

  def show
    @assignment = Assignment.find(params[:id])

    render("assignments/show.html.erb")
  end

  def new
    @assignment = Assignment.new
    @kids = current_parent.family.kids
    render("assignments/new.html.erb")
  end

  def create
    @assignment = Assignment.new
    @kids = current_parent.family.kids
    @assignment.chores_id = params[:chores_id]
    @assignment.parents_id = params[:parents_id]
    @assignment.kids_id = params[:kids_id]
    @assignment.due_date = params[:due_date]
    @assignment.completed = params[:completed]

    save_status = @assignment.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/assignments/new", "/create_assignment"
        redirect_to("/assignments")
      else
        redirect_back(:fallback_location => "/", :notice => "Assignment created successfully.")
      end
    else
      render("assignments/new.html.erb")
    end
  end

  def edit
    @assignment = Assignment.find(params[:id])

    render("assignments/edit.html.erb")
  end
  
  def complete
    @assignment = Assignment.find(params[:id])
    @assignment.completed = true
    @assignment.save
    
    redirect_back(:fallback_location => "/", :notice => "Assignment completed.")
  end

  def update
    @assignment = Assignment.find(params[:id])

    @assignment.chores_id = params[:chores_id]
    @assignment.parents_id = params[:parents_id]
    @assignment.kids_id = params[:kids_id]
    @assignment.due_date = params[:due_date]
    @assignment.completed = params[:completed]

    save_status = @assignment.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/assignments/#{@assignment.id}/edit", "/update_assignment"
        redirect_to("/assignments/#{@assignment.id}", :notice => "Assignment updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Assignment updated successfully.")
      end
    else
      render("assignments/edit.html.erb")
    end
  end

  def destroy
    @assignment = Assignment.find(params[:id])

    @assignment.destroy

    if URI(request.referer).path == "/assignments/#{@assignment.id}"
      redirect_to("/", :notice => "Assignment deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Assignment deleted.")
    end
  end
end
