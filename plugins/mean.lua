local function run(msg, matches)
  local htp = http.request('http://api.vajehyab.com/v2/public/?q='..URL.escape(matches[1]))
  local data = json:decode(htp)
 local text = '<i>کلمه : '..(data.data.title or data.search.q)..'</i>\n\nمعنی : '..(data.data.text or '----' )..'\n\n <a href="http://telegram.me/LionTeam">LionTeam</a> '
send_api_msg(msg, get_receiver_api(msg), text, true, 'html')
end
return {
  patterns = {
    "^![Mm][Ee][Aa][Nn] (.*)$"
  },
  run = run 
}
