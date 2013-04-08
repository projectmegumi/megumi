class ShowsController < ApplicationController
  def index
    @shows = Show.order(:name)
  end

  def show
    @show = Show.find(params[:id])
  end
end
