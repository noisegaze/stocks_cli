
require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require 'pry'



class Api 



def get_stock(symbol)
url = URI("https://apidojo-yahoo-finance-v1.p.rapidapi.com/stock/v2/get-summary?symbol=" + symbol + "&region=US")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["x-rapidapi-key"] = 'cbf3a9a4a2msh016640a1b0b9654p167a44jsn6a865e1db18a'
request["x-rapidapi-host"] = 'apidojo-yahoo-finance-v1.p.rapidapi.com'



response = http.request(request)
#puts response.read_body
var = JSON.parse(response.body)["price"]["regularMarketOpen"]["raw"]
# puts JSON.parse(response.body)["price"]["regularMarketOpen"]["raw"] 
# binding.pry 
var 
end





end