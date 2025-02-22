Rails.application.routes.draw do

    get("/square/new", { :controller => "application", :action => "blank_square_form" })

    get("/payment/new", { :controller => "application", :action => "new_payment" })
  
    get("/square/results", { :controller => "application", :action => "calculate_square" })
    
    get("/random/results", { :controller => "application", :action => "calculate_random"})

    get("/random/new", { :controller => "application", :action => "rand_with_form"})

end
