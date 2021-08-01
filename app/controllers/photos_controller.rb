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
  def delete_photo
    url_id = params.fetch("photo_id")
    photo_to_delete = Photo.where({:id => url_id}).first
    photo_to_delete.destroy
    redirect_to("/photos")
  end
  def insert_photo
    new_photo = Photo.new
    new_photo.image = params.fetch("input_image")
    new_photo.caption = params.fetch("input_caption")
    new_photo.owner_id = params.fetch("input_owner_id")
    new_photo.save
    redirect_to("/photos/" + new_photo.id.to_s)
  end
  def update_photo
    url_id = params.fetch("photo_id")
    photo_to_update = Photo.where({:id => url_id}).first
    photo_to_update.image = params.fetch("input_image")
    photo_to_update.caption = params.fetch("input_caption")
    photo_to_update.save
    redirect_to("/photos/" + url_id.to_s)
  end
end
