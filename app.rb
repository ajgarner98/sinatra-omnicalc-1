require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/square/new")do
  erb(:square_new)

end

get("/square_root/new")do
  erb(:square_root_new)
end

get("/payment/new")do
  erb(:payment_new)
end

get("/random/new")do
  erb(:random_new)
end

get ("/square/results") do
  @the_num = params.fetch("users_number").to_f
  @the_result = @the_num ** 2
  erb(:square_results)
end

get ("/square_root/results") do
  @the_num = params.fetch("users_number").to_f
  @the_result = @the_num ** 0.5
  erb(:square_root_results)
end

get ("/payment/results") do
  @the_APR = params.fetch("users_APR").to_f
  @the_years = params.fetch("users_year_number").to_f
  @the_principal = params.fetch("users_principal").to_f
  @numerator = @the_APR*@the_principal
  @denominatora = (1 + @the_APR) **-12 
  @denominator = 1- denominatora
  @the_result = @numerator/@demoninator
  erb(:payment_results)
end
