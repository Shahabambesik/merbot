do

function run(msg, matches)
local reply_id = msg['id']

local text = 'Pong!'

reply_msg(reply_id,  text, ok_cb, false)
end

return {
patterns = {
"^[#!/][Pp][Ii][Nn][Gg]$",
},
run = run
}

end
