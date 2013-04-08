class ShowsController < ApplicationController
  def index
    @shows = Show.order(:name)
  end
end
