local function do_keyboard_buygroup()
    local keyboard = {}
    keyboard.inline_keyboard = {
    {
                {text = 'test', url = 'google.com'},
                {text = 'test', url = 'google.com'},
      },
    {
                {text = 'test', url = 'google.com'},
                {text = 'test', url = 'google.com'},
      },
   {
                {text = 'test', url = 'google.com'},
                {text = 'test', url = 'google.com'},
      },
    }
    return keyboard
end
local function run(msg,matches)
local keyboard = do_keyboard_buygroup()
 send_api_keyboard(msg, get_receiver_api(msg), 'test', keyboard)
end
return {
patterns = {
"test"
},
run = run,
}
