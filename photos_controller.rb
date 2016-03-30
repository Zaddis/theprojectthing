class PhotosController < ApplicationController
   
   def new
       render "new"
   end
   
   def create
       @var = Photo.new
       @var.caption = params["caption"]
       @var.photo = params["photo"]
       @var.save
       redirect_to "/photos/#{@var.id}"
   end
   
   def show
       @var = Photo.find(params[:id])
       render "show"
   end
   
   def index
       @var = Photo.all
       render "index"
   end
   
   def update
      @var = Photo.find(params[:id])
       @var.caption = params["caption"]
       @var.photo = params["photo"]
       @var.save
       redirect_to photo_url(@var.id)
   end
   
   def edit
       @var = Photo.find(params[:id])
       render "edit"
   end
   
   def destroy
      @var = Photo.find(params[:id])
      @var.destroy
     redirect_to photos_url
   end
    
end