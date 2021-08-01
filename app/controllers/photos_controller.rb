class PhotosController < ApplicationController
  def photo_list
    @list_of_photos = Photo.all.order({:created_at => :desc})
    render({:template => "templates/photo_list.html.erb"})
  end
  def photo_detail
    url_id = params.fetch("photo_id")
    @the_photo = Photo.where({:id => url_id}).first
    render({:template => "templates/photo_detail.html.erb"})
  end
  def update_photo
    url_id = params.fetch("photo_id")
    photo_to_update = Photo.where({:id => url_id}).first
    # here goes the update function
    # redirect to /photos
    render({:template => "templates/photo_list.html.erb"})
  end
  def delete_photo
    url_id = params.fetch("photo_id")
    photo_to_delete = Photo.where({:id => url_id}).first
    photo_to_delete.destroy
    redirect_to("/photos")
  end
end
