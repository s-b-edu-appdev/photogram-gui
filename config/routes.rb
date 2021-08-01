Rails.application.routes.draw do
  get("/", { :controller => "users", :action => "index" })
  get("/users", { :controller => "users", :action => "user_list" })
  get("/users/:path_username", { :controller => "users", :action => "user_detail" })
  get("/add_user", { :controller => "users", :action => "add_user" })
  get("/update_user/:old_username", { :controller => "users", :action => "update_user" })
  get("/photos", { :controller => "photos", :action => "photo_list" })
  get("/photos/:photo_id", { :controller => "photos", :action => "photo_detail" })
  get("/delete_photo/:photo_id", { :controller => "photos", :action => "delete_photo" })
  get("/insert_photo", { :controller => "photos", :action => "insert_photo" })
  get("/update_photo/:photo_id", { :controller => "photos", :action => "update_photo" })
end
