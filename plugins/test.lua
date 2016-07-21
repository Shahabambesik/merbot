local function do_keyboard_buygroup()
    local keyboard = {}
    keyboard.inline_keyboard = {
    {
                {text = '🆘Support', url = 'https://telegram.me/joinchat/DJM4TT61WZuuJ5bvjqb4TQ'},
                {text = '📡Channel', url = 'https://telegram.me/HPRNews'},
      },
    {
                {text = '💵Order Group', url = 'https://telegram.me/joinchat/DJM4TT6uQn7DCH1jZn-rCQ},
                {text = '🤖Support Bot', url = 'https://http://telegram.me/HprSupportBot'},
      },
   {
                {text = 'Mehran', url = 'https://telegram.me/Mehran_HPR'},
                {text = 'Shahab', url = 'https://telegram.me/Shahab_Safaei'},
      },
    }
    return keyboard
end
local function run(msg,matches)
local keyboard = do_keyboard_buygroup()
 send_api_keyboard(msg, get_receiver_api(msg), 'Hprbot\nAn Advance Administration Bot based on mrrbot', keyboard)
end
return {
patterns = {
"^[Hh][Pp][Rr][Bb][Oo][Tt]$"
},
run = run,
}
