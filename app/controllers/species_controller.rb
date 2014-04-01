class SpeciesController < ApplicationController

  def index
    @species = Species.all
    render('species/index.html.erb')
  end

  def create
    @species = Species.create(:name => params[:name])
    render('species/success.html.erb')
  end

  def show
    @species = Species.find(params[:id])
    render('species/show.html.erb')
  end

  def new
    render ('species/new.html.erb')
  end
end
