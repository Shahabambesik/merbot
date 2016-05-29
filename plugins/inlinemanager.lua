local api_key = _config.bot_api.key
local function run(msg,matches)
    if is_sudo(msg.from.peer_id) then
    local text = matches[1]
    local channel_id = '@BeatBot_team'
    local link_text = matches[2]
    local link = matches[3]
    local keyboard = '{"inline_keyboard":[[{"text":"'..link_text..'","url":"'..link..'"}]]}'
    local url = 'https://api.telegram.org/bot'..api_key..'/sendMessage?chat_id='..channel_id..'&parse_mode=Markdown&text='..text..'&disable_web_page_preview=true&reply_markup='..keyboard
    local dat, res = https.request(url)
      if res == 400 then
         reply_msg(msg.id, 'Error !', ok_cb, true)    
         else
         reply_msg(msg.id, 'Sent !', ok_cb, true)    
      end
      end
  end
  return {
usage = {'<b>For Sudo</b>'},
      patterns = {
          "^[!/#]channel (.*) /(.*)/(.*)$"
          },
      run = run
  }
