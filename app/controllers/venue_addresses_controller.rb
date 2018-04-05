class VenueAddressesController < ApplicationController
  def index
    @venue_addresses = VenueAddress.all

    render("venue_addresses/index.html.erb")
  end

  def show
    @venue_address = VenueAddress.find(params[:id])

    render("venue_addresses/show.html.erb")
  end

  def new
    @venue_address = VenueAddress.new

    render("venue_addresses/new.html.erb")
  end

  def create
    @venue_address = VenueAddress.new

    @venue_address.address = params[:address]
    @venue_address.neighborhood = params[:neighborhood]

    save_status = @venue_address.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/venue_addresses/new", "/create_venue_address"
        redirect_to("/venue_addresses")
      else
        redirect_back(:fallback_location => "/", :notice => "Venue address created successfully.")
      end
    else
      render("venue_addresses/new.html.erb")
    end
  end

  def edit
    @venue_address = VenueAddress.find(params[:id])

    render("venue_addresses/edit.html.erb")
  end

  def update
    @venue_address = VenueAddress.find(params[:id])

    @venue_address.address = params[:address]
    @venue_address.neighborhood = params[:neighborhood]

    save_status = @venue_address.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/venue_addresses/#{@venue_address.id}/edit", "/update_venue_address"
        redirect_to("/venue_addresses/#{@venue_address.id}", :notice => "Venue address updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Venue address updated successfully.")
      end
    else
      render("venue_addresses/edit.html.erb")
    end
  end

  def destroy
    @venue_address = VenueAddress.find(params[:id])

    @venue_address.destroy

    if URI(request.referer).path == "/venue_addresses/#{@venue_address.id}"
      redirect_to("/", :notice => "Venue address deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Venue address deleted.")
    end
  end
end
