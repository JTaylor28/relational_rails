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
    # Concert.create(name: params[:name], capacity: params[:capacity], sold_out: params[:sold_out])
    Concert.create(concert_params)
    redirect_to '/concerts'
  end

  private
  def concert_params
    params.permit(:name, :capacity, :sold_out)
  end

end