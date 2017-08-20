class ChoreCategoriesController < ApplicationController
  def index
    @chore_categories = ChoreCategory.page(params[:page]).per(10)

    render("chore_categories/index.html.erb")
  end

  def show
    @chore = Chore.new
    @chore_category = ChoreCategory.find(params[:id])

    render("chore_categories/show.html.erb")
  end

  def new
    @chore_category = ChoreCategory.new

    render("chore_categories/new.html.erb")
  end

  def create
    @chore_category = ChoreCategory.new

    @chore_category.chores_id = params[:chores_id]
    @chore_category.category_name = params[:category_name]

    save_status = @chore_category.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/chore_categories/new", "/create_chore_category"
        redirect_to("/chore_categories")
      else
        redirect_back(:fallback_location => "/", :notice => "Chore category created successfully.")
      end
    else
      render("chore_categories/new.html.erb")
    end
  end

  def edit
    @chore_category = ChoreCategory.find(params[:id])

    render("chore_categories/edit.html.erb")
  end

  def update
    @chore_category = ChoreCategory.find(params[:id])

    @chore_category.chores_id = params[:chores_id]
    @chore_category.category_name = params[:category_name]

    save_status = @chore_category.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/chore_categories/#{@chore_category.id}/edit", "/update_chore_category"
        redirect_to("/chore_categories/#{@chore_category.id}", :notice => "Chore category updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Chore category updated successfully.")
      end
    else
      render("chore_categories/edit.html.erb")
    end
  end

  def destroy
    @chore_category = ChoreCategory.find(params[:id])

    @chore_category.destroy

    if URI(request.referer).path == "/chore_categories/#{@chore_category.id}"
      redirect_to("/", :notice => "Chore category deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Chore category deleted.")
    end
  end
end
