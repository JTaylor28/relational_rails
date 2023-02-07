class BandsController < ApplicationController

  def index
    @bands = Band.all
  end

  def show
    @band = Band.find(params[:id])
  end

  def edit
    @band = Band.find(params[:id])
  end

  def update
    @band = Band.find(params[:id])
    @band.update(band_params)
    redirect_to "/bands/#{@band.id}"
  end

  private
  def band_params
    params.permit(:band_name, :headliner, :members)
  end

end