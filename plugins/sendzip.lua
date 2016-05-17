do

local function run(msg, matches)

if matches[1] == "sendzip" then

local file = matches[2]

if is_sudo(msg.from.peer_id) then

local receiver = get_receiver(msg)

send_document(receiver, "./cloud/"..file..".zip", ok_cb, false)

end

end

end

return {

patterns = {

"^(sendzip) (.*)$"

},

run = run

}

end
