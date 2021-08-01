class PhotosController < ApplicationController
  def photo_list 
    render({:template => "templates/photo_list.html.erb"})
  end
  def photo_detail
    render({:template => "templates/photo_detail.html.erb"})
  end
end
