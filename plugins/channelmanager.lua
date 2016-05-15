local function run(msg,matches)
    if is_sudo(msg.from.peer_id) then
    local api_key = ''
    local channel_id = '@Shahab_Ch'
    local text = matches[1]
    local url = 'https://api.telegram.org/bot'..api_key..'/sendMessage?chat_id='..channel_id..'&text='..text..'&parse_mode=Markdown'
    local dat, res = https.request(url)
      if res == 400 then
         reply_msg(msg.id, 'Error', ok_cb, true)
      end
  end
      return 'Sent !'
  end
  return {
      patterns = {
          "^[!/#]channel (.*)$"
          },
      run = run
  }
