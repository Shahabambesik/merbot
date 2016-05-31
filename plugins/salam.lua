do

function run(msg, matches)
local reply_id = msg['id']

local text = 'Salam mikhorish baram'

reply_msg(reply_id,  text, ok_cb, false)
end

return {
patterns = {
"^[Ss][Ll][Mm]$",
"^[Ss][Aa][Ll][Aa][Mm]$",
"^سلام$",
},
run = run
}

end
