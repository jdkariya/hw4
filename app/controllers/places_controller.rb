class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

  def show
    @place = Place.find_by({ "id" => params["id"] })
    if @current_user
      @user = User.find_by({"id" => @current_user["id"]})
      @posts = Post.where({"user_id" => @user["id"], "place_id" => @place["id"]})
    end
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new
    @place["name"] = params["place"]["name"]
    @place.save
    redirect_to "/places"
  end

end
