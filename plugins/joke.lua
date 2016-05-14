local database = 'http://vip.opload.ir/vipdl/94/11/amirhmz/'
local function run(msg)
 local res = http.request(database.."joke.db")
 local joke = res:split(",")
 local text = joke[math.random(#joke)] 
 local text = text..'\n\n[Lion Team](http://telegram.me/LionTeam'
    send_api_msg(msg, get_receiver_api(msg), text, true, 'md')

end

return {
 usage = {'<code>!joke</code>',
         'Funny sentences will be sent randomly'
         },
 patterns = {
  "^[#!/]joke$",
  },
 run = run
}
