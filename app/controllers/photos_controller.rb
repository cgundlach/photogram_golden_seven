class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo_id = params[:id]
    @list_of_photos = Photo.all
  end

  def new_form
    @list_of_photos = Photo.all
  end

  def create_row
    p = Photo.new
    p.source = params[:the_source]
    p.caption = params[:the_caption]
    p.save

    redirect_to("http://localhost:3000/photos/")

  end

  def destroy
    p = Photo.find(params[:id])
    p.destroy

    redirect_to("http://localhost:3000/photos/")

  end

  def edit_form
    @photo = Photo.find(params[:id])
  end

  def update_row
    p = Photo.find(params[:id])
    p.source = params[:the_source]
    p.caption = params[:the_caption]
    p.save

    redirect_to("http://localhost:3000/photos/#{p.id}")
  end

 end
