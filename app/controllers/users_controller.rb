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
  def add_user
    input_username = params.fetch("username")
    new_user = User.new
    new_user.username = input_username
    new_user.save
    redirect_to("/users/" + input_username)
  end
  def update_user
    old_username = params.fetch("old_username")
    input_username = params.fetch("new_username")
    updated_user = User.where({:username => old_username}).first
    updated_user.username = input_username
    updated_user.save
    redirect_to("/users/" + input_username)
  end
end
