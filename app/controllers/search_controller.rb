class SearchController < ApplicationController
  def search
    # binding.pry
#if connected to internet/
    vines = Vine.find_by_tag(params[:tag])
    @tag = params[:tag]
    @vines = vines[0..9]
    render :search
  end
end
