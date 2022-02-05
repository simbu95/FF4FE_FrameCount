local socket = require("socket.core")

tcp=socket.tcp()
tcp:connect('127.0.0.1',54321)
tcp:setoption('keepalive',true)

local function checkKIs()
	local words= {}
	for i=0, 1 do
		words[i]=memory.readdword(0x7E1514 + 4*i)
	end
	Bs=bit.band(memory.readdword(0x7E1500),0x1FFFF)
	tcp:send(string.format("{\"KI\": %d,\"Loc1\": %d,\"Loc2\": %d}",Bs,words[0],words[1]))
end

	
local function myframe()
	if(emu.framecount() % 300 == 0)
		checkKIs()
	end
end

local function metaData()
	local numBytes=memory.readbyte(0x3FF000)+memory.readbyte(0x3FF001)*256+memory.readbyte(0x3FF002)*256*256+memory.readbyte(0x3FF003)*256*256*256
	local str = ""
	for i=1,numBytes-2 do
		str = str .. string.char(memory.readbyte(0x3FF004+i))
	end
	return string.format("\"metadata\": {\n%s}\n",str)
end

emu.registerbefore(myframe)

tcp:send("{" .. metaData() .. "}")
