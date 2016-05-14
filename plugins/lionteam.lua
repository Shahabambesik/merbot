do

function run(msg, matches)
local reply_id = msg['id']

local text = 'LionBot V 1.0.0\n\nAn Advance Administration BOT Based On Merbot\n\nAdmins:\n- @Shahabambesik - 119989724\n- @Joy_Face - 128556958\n- @Pho3nix - 70694289\n\nOur Channel : https://telegram.me/lionteam\nPowered By LionTeam.ir'

reply_msg(reply_id,  text, ok_cb, false)
end

return {
patterns = {
'^[#!/][Ll][Ii][Oo][Nn][Bb][Oo][Tt]$',
},
run = run
}

end
