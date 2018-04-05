class CuisineTypesController < ApplicationController
  def index
    @q = CuisineType.ransack(params[:q])
    @cuisine_types = @q.result(:distinct => true).includes(:dishes).page(params[:page]).per(10)

    render("cuisine_types/index.html.erb")
  end

  def show
    @dish = Dish.new
    @cuisine_type = CuisineType.find(params[:id])

    render("cuisine_types/show.html.erb")
  end

  def new
    @cuisine_type = CuisineType.new

    render("cuisine_types/new.html.erb")
  end

  def create
    @cuisine_type = CuisineType.new

    @cuisine_type.name = params[:name]

    save_status = @cuisine_type.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/cuisine_types/new", "/create_cuisine_type"
        redirect_to("/cuisine_types")
      else
        redirect_back(:fallback_location => "/", :notice => "Cuisine type created successfully.")
      end
    else
      render("cuisine_types/new.html.erb")
    end
  end

  def edit
    @cuisine_type = CuisineType.find(params[:id])

    render("cuisine_types/edit.html.erb")
  end

  def update
    @cuisine_type = CuisineType.find(params[:id])

    @cuisine_type.name = params[:name]

    save_status = @cuisine_type.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/cuisine_types/#{@cuisine_type.id}/edit", "/update_cuisine_type"
        redirect_to("/cuisine_types/#{@cuisine_type.id}", :notice => "Cuisine type updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Cuisine type updated successfully.")
      end
    else
      render("cuisine_types/edit.html.erb")
    end
  end

  def destroy
    @cuisine_type = CuisineType.find(params[:id])

    @cuisine_type.destroy

    if URI(request.referer).path == "/cuisine_types/#{@cuisine_type.id}"
      redirect_to("/", :notice => "Cuisine type deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Cuisine type deleted.")
    end
  end
end
