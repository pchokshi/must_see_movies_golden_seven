class GoldenController < ApplicationController
  def home
  end

  def director_index
    @list_of_directors = Director.all
  end

  def director_show
    @director = Director.find_by({ :id => params[:id]})
  end
end
