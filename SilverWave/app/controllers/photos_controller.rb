class PhotosController < ApplicationController

def feed
end

def index
  @photos = Photo.all
end

# def show
# end




end