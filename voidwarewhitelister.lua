local roblox_username = game:GetService("Players").LocalPlayer.Name
local api_key = "VD-SQK8OFNHMZT"
local headers = {
    ["Content-type"] = "application/json",
    ["api-key"] = tostring(api_key)
}
local data = {}
data["roblox_username"] = tostring(roblox_username)
local final_data = game:GetService("HttpService"):JSONEncode(data)
local url = "https://whitelist.vapevoidware.xyz/edit_wl"
local a = request({
    Url = url,
    Method = 'POST',
    Headers = headers,
    Body = final_data
})
for i,v in pairs(a) do
    print(i,v)
end
