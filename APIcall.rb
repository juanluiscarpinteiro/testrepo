require 'rest-client'
 
response = RestClient.get 'https://openweathermap.org/data/2.5/weather?id=5128581&units=imperial&appid=439d4b804bc8187953eb36d2a8c26a02',{accept: :json}
 
puts "Response code: " 
puts response.code
puts "Response Headers : "
puts response.headers
puts "Response Body " 
puts response.body

# In this scenario I am calling for NY as inserted in the URL which is the part of the 'id=5128581'
