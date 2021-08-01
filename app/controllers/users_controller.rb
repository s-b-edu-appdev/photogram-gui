class UsersController < ApplicationController
  def index
    matching_users = User.all
    @list_of_users = matching_users.order({:username => :asc})
    render({:template => "templates/user_list.html.erb"})
  end
  def user_list 
    matching_users = User.all
    @list_of_users = matching_users.order({:username => :asc})
    render({:template => "templates/user_list.html.erb"})
  end
  def user_detail
    url_username = params.fetch("path_username")
    @the_user = User.where({:username => url_username}).first
    render({:template => "templates/user_detail.html.erb"})
  end
end
