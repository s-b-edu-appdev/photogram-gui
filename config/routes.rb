Rails.application.routes.draw do
  get("/", { :controller => "users", :action => "index" })
  get("/users", { :controller => "users", :action => "user_list" })
  get("/users/:path_username", { :controller => "users", :action => "user_detail" })
  get("/photos", { :controller => "photos", :action => "photo_list" })
  get("/photos/:photo_id", { :controller => "photos", :action => "photo_detail" })

end
