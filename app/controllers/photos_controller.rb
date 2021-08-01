class PhotosController < ApplicationController
  def photo_list
    @list_of_photos = Photo.all.order({:created_at => :desc})
    render({:template => "templates/photo_list.html.erb"})
  end
  def photo_detail
    render({:template => "templates/photo_detail.html.erb"})
  end
end
