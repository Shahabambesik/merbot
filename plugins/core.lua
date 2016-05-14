do

function run(msg, matches)
local reply_id = msg['id']

local text = 'LionTeam - Core Link :\nhttps://telegram.me/joinchat/DC-9Qj6fqS9uHxJd3PiwxA\nLionTeam'

reply_msg(reply_id,  text, ok_cb, false)
end

return {
patterns = {
'^[#!/][Cc][Oo][Rr][Ee]$',
},
run = run
}

end
