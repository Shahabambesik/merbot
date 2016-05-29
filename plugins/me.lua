do
local function run(msg, matches)
    local hash = 'rank:variables'
  local uhash = 'user:'..msg.from.id
   local user = redis:hgetall(uhash)
    local um_hash = 'msgs:'..msg.from.id..':'..msg.to.id
  user_info_msgs = tonumber(redis:get(um_hash) or 0)
  local file = 'userstickers/'..msg.from.id..'.webp'
local file1 = io.open("./info/"..msg.from.id..".txt", "r")
  if file1 ~= nil then
    usertype = file1:read("*all")
  else
    if is_sudo(msg.from.peer_id) then
    usertype = 'sudo'
    elseif is_admin(msg.from.peer_id) then
    usertype = 'admin'
    elseif is_owner(msg.from.peer_id) then
    usertype = 'owner'
    elseif is_mod(msg.from.peer_id) then
    usertype = 'moderator'
    else
    usertype = 'member'
  end
end
    send_document(get_receiver(msg), file, ok_cb, false)
      return "You are "..usertype.." and You Have Sent "..user_info_msgs.." Massages"
end
return {
  patterns = {
    "^[!/#]([Mm]e)$",
    "^([Mm]e)$"
    },
  run = run
}
end
