class Concerts::BandsController < ApplicationController
  def index
     @concert = Concert.find(params[:concert_id])
     @bands = @concert.bands
  end
end