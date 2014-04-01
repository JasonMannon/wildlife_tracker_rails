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

  def show
    @species = Species.find(params[:species_id])
  end

  def create
    @sighting = Sighting.new(:species_id => params[:species_id],
                             :location => params[:location],
                             :date => params[:date],
                             :time => params[:time])
    if @sighting.save
      render('sightings/success.html.erb')
    else
      render('sightings/new.html.erb')
    end
  end

end
