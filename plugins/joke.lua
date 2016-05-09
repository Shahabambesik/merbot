do

function run
if matches[1]:lower() == 'joke' then
local res = http.request('http://82.102.11.188/joke.db')
--local res = load_from_file('/var/www/html/joke.db', *)
local joke = res:split("`")
return joke[math.random(#joke)]..'\n\n@GPMod'
end

return {

patterns = {     "^joke$"
}, 
   run = run  
}
