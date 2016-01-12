class PhotosController < ApplicationController

def welcome
end

def index
  @photos = Photo.all
end

end