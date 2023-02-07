class Concerts::BandsController < ApplicationController
  def index
    @concert = Concert.find(params[:concert_id])
    @bands = @concert.bands
  end

  def new
    @concert = Concert.find(params[:concert_id])
  end

  def create 
    @concert = Concert.find(params[:concert_id])
    @concert.bands.create!(band_params) 
    redirect_to "/concerts/#{@concert.id}/bands"
  end

  private

  def band_params
    params.permit(:band_name, :headliner, :members)
  end

end