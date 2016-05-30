local function run(msg,matches)
local text = matches[1]
  send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
return {
description = "text to markdown",
usage = {
"/echo *text* : text to bold",
"/echo [text](link) : link to hyperlinkhyperlink",
"/echo _text_ : text to italic",
},
patterns = {
"^[!/#]echo (.*)"
},
run = run 
}
