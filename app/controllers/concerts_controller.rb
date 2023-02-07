class ConcertsController < ApplicationController
  
  
  def index
    @concerts = Concert.all.order("created_at DESC")
  end
  
  def show
    @concert = Concert.find(params[:id])
  end
  
  def new
  end

  def create
    Concert.create(concert_params)
    redirect_to '/concerts'
  end

  def edit
    @concert = Concert.find(params[:id])
  end

  def update
    @concert = Concert.find(params[:id])
    @concert.update(concert_params)
    redirect_to "/concerts/#{@concert.id}"
  end

  private
  def concert_params
    params.permit(:name, :capacity, :sold_out)
  end

end