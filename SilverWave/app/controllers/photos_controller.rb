class PhotosController < ApplicationController

def feed
end

def index
  # binding.pry
  @photos = Photo.all
end

def show
  @photo = Photo.find(params[:id])
end

def new
  @photo = Photo.new
end

def edit
  # binding.pry
  @photo = Photo.find(params[:id])

    # edit title: params[:photo][:title],
    # description: params[:photo][:description])
  # redirect_to(photos_path)
end

def create
  current_user.photos.create(title: params[:photo][:title],
    description: params[:photo][:description])
  redirect_to(photos_path)
end

def update
  @photo = Photo.find(params[:id])
  @photo.update(title: params[:photo][:title],
    description: params[:photo][:description])
  redirect_to(photos_path)
end

def destroy
  @photo = Photo.find(params[:id])
  @photo.destroy 
  redirect_to(photos_path)
end

end