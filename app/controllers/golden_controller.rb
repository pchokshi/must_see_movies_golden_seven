class GoldenController < ApplicationController
  def home
  end

  def director_index
    @list_of_directors = Director.all
  end

  def director_show
    @director = Director.find_by({ :id => params[:id]})
  end

  def director_delete
    @director_delete = Director.find_by({ :id => params[:id]})
    @director_delete.destroy
    redirect_to("http://localhost:3000/directors")
  end

  def director_new_form
  end

  def director_create_new
    p=Director.new
    p.name = params[:the_name]
    p.image_url = params[:the_image_url]
    p.dob = params[:the_dob]
    p.bio = params[:the_bio]
    p.save

    redirect_to("http://localhost:3000/directors")
  end
  def director_edit_form
    @director = Director.find_by({ :id => params[:id]})
  end

  def update_director
    @director=Director.find_by({ :id => params[:id]})
    @director.name = params[:the_name]
    @director.image_url = params[:the_image_url]
    @director.dob = params[:the_dob]
    @director.bio = params[:the_bio]
    @director.save
  end

end
