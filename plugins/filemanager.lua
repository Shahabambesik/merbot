do
local function savefile(extra, success, result)
  local msg = extra.msg
  local name = extra.name
  local receiver = get_receiver(msg)
  if success then
    local file = 'cloud/'..name
    print('File saving to:', result)
    os.rename(result, file)
    print('File moved to:', file)
  else
    print('Error downloading: '..msg.id)
    send_large_msg(receiver, 'Failed, please try again!', ok_cb, false)
  end
end
local function run(msg,matches)
   if msg.reply_id then
   local name = matches[2]
      if matches[1] == "save" and matches[2] and is_sudo(msg.from.peer_id) then
load_document(msg.reply_id, savefile, {msg=msg,name=name})
load_photo(msg.reply_id, savefile, {msg=msg,name=name})
load_video(msg.reply_id, savefile, {msg=msg,name=name})
load_audio(msg.reply_id, savefile, {msg=msg,name=name})

        return 'Done'
    end
end

if matches[1] == "get" then
    local file = matches[2]
    if is_sudo(msg) then
      send_document('user#id'..msg.from.id, "cloud/"..file, ok_cb, false)
      else 
        return nil
    end
  end
if matches[1] == "get>" then 
    if is_sudo(msg) then
      send_document('chat#id'..msg.from.id, "cloud/"..matches[2], ok_cb, false)
      else 
        return nil
    end
  end
if matches[1] == "setfile" then
  local text = matches[3]
  local b = 1
  local name = matches[2]
  local file = io.open("cloud/"..name, "w")
  file:write(text)
  file:flush()
  file:close()
  return "Done!"
  end
if matches[1] == 'dir' and is_sudo(msg) then
local text = io.popen("cd cloud && ls"):read('*all')
  return text
end
if matches[1] == 'show' and is_sudo(msg) then
			if #matches == 2 then
local file = io.popen("cat cloud/"..matches[2] .." "):read('*all')
  return file
		else
	return 
end
end
end
return {
  patterns = {
"^[!/#]([Gg]et) (.*)",
"^[!/#]([Dd]ir)",
"^[!/#]([Ss]how) (.*)",
"^[!/#]([Ss]ave) (.*)",
"^[!/#]([Gg]et>) (.*)",
"^([&$]) (.*)",
"%[(document)%]",
"%[(photo)%]",
"%[(video)%]",
"%[(audio)%]",
"^[#!/]([Ss]etfile) ([^%s]+) (.*)$",
  },
  run = run
  }
  end
