class SightingsController < ApplicationController

  def new
    species = Species.find(params[:species_id])
    @sighting = species.sightings.new
    render('sightings/new.html.erb')
  end

  def index
    @sightings = Sighting.all
    render('sightings/index.html.erb')
  end

  def edit
    @sighting = Sighting.find(params[:id])
    render('sightings/edit.html.erb')
  end

  def update
    @sighting = Sighting.find(params[:id])
    if @sighting.update(:location => params[:location],
                                :date => params[:date],
                                :time => params[:time])
      render('sightings/success.html.erb')
    else
      render('sightings/edit.html.erb')
    end
  end

  def show
    @species = Species.find(params[:species_id])
  end

  def create
    @sighting = Sighting.new(:species_id => params[:species_id],
                             :location => params[:location],
                             :date => params[:date],
                             :time => params[:time],
                             :region_id => params[:region_id])
    if @sighting.save
      render('sightings/success.html.erb')
    else
      render('sightings/new.html.erb')
    end
  end

  def destroy
    @sighting = Sighting.find(params[:id])
    @sighting.destroy
    render('sightings/destroy.html.erb')
  end
end
