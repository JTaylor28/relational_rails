class ConcertsController < ApplicationController
  def index
    @concerts = Concert.all.order("created_at DESC")
  end

  def show
   @concert = Concert.find(params[:id])
  end

end