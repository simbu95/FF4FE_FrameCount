
area_battles = {}
area_frames = {}
area_menus = {}
lagcount=0
started=false
areas={"Baron Town","Mist","Kaipo","Mysidia","Mythril","Troia Town","Agart","Troia Inn","Troia Weapons","Troia Armor","Troia Items","Baron Inn","Baron Equipment","Cid's house","Rosa's house","Rydia's house","Kaipo Inn","Kaipo Cafe","Kaipo Hospital","Mysidia Cafe","Mysidia Inn","Mount Ordeals Mirror Room","House of Wishes","Room of Wishes","Troia Cafe main floor","Troia Cafe upstairs","Troia Dancers' stage","-Glitch world-","Troia Chocobo stable entrance","Troia Chocobo stable downstairs","Astro Tower main hall","Astro Tower Observatory","Agart Inn","Large chocobo forest near Troia","Town water background","Castle floor background","Baron Castle","Damcyan","Fabul","Troia Castle","Eblan","Desert background","Baron Castle Lobby","Baron Castle Outer court","Baron Castle Throne room","Baron Castle West Hall","Baron Castle East Hall","Baron Castle Prison entrance","Baron Castle Prison","Baron Castle Soldiers' quarters","Baron Castle West tower 1F","Baron Castle West tower 2F","Baron Castle Cecil's room","Baron Castle East tower 1F","Baron Castle East tower 2F","Baron Castle East tower 3F","Baron Castle East tower B1","Baron Castle Odin's room","Sewer entrance","Sewer B3","Sewer B1","Sewer Save point room","Sewer B2","Damcyan 1F","Damcyan 2F","Damcyan 3F","Damcyan Treasury entrance","Damcyan Treasury downstairs","Room leading to sewer","Agart Weapons","Agart Armor","Fabul Lobby","Fabul Second floor","Fabul Throne room","Fabul Crystal room","Fabul Equipment store","Fabul Inn","Fabul East tower 1F","Fabul East tower 2F","Fabul King's room","Fabul West tower 1F","Fabul Hostpital","Fabul Yang's room","Forest where you lose Kain","Watery Pass Save point room","Troia Castle Lobby","Troia Castle Clerics' room","Troia Castle Crystal room","Troia Castle Hospital","Troia Castle Room w/ 3 stairs","Troia Castle Hall to treasury","Troia Castle Room w/ random pots","Troia Castle Room w/ rubyring chests","Troia Castle Main treasury","Eblan 1F","Eblan 2F","Eblan Throne room","Eblan West tower 1F","Eblan West tower 2F","Eblan East tower 1F","Eblan East tower 2F","Eblan Basement","Baron Castle Black magic school","Baron Castle White magic school","Desert background","Training room","Waterfall","Castle water background","Misty cave","Mirror room background","Watery Pass background","Watery Pass 1F","Watery Pass 2F","Watery Pass 3F","Watery Pass 4F","Watery Pass 5F","Waterfall entrance","Waterfall 1F","Waterfall 2F","Antlion Cave 1F","Antlion Cave 2F","Antlion Cave Antlion's nest","Antlion Cave Save point room","Antlion Cave Treasure room w/ harp","Black background","Mist background","Mount Hobs West","Mount Hobs Summit","Mount Hobs East","Mount Hobs Save point floor","Mountain background","Watery Pass Room behind waterfall","Mount Ordeals 1F","Mount Ordeals 2F","Mount Ordeals 3F","Mount Ordeals Summit","Mysidia Crystal room","Mysidia Devil's Road","Baron Castle Collapsing hallway","Agart Well","Cave Magnes 1F","Cave Magnes 2F","Cave Magnes Treasure room w/ pit","Cave Magnes 3F","Cave Magnes Treasure room w/ torch","Cave Magnes 4F","Cave Magnes Save point room","Cave Magnes 5F","Cave Magnes Crystal room","Cave Magnes background","Watery Pass campsite","Baron Devil's Road","Tower of Zot 1F","Tower of Zot 2F","Tower of Zot 3F","Pitch black room","Tower of Zot 4F","Tower of Zot 5F","Tower of Zot 6F","Tower of Zot Command center","Adamant Grotto","Cave Magnes Save point room","Tower of Zot Save point room","Cid's Airship - Giant sequence","Twins' Airship - Giant sequence","Edward's Airship - Giant sequence","Tower of Babil Save point room","Tower of Babil B1","Tower of Babil B2","Tower of Babil B3","Tower of Babil B4","Tower of Babil Crystal room","Tower of Babil B5","Scrolling mountains - Cid falling?","Underground tunnel background","Crystal room background","Ending - Cecil's room","Training room Main floor","Training room Upstairs","-Glitch world-","-Glitch world-","Giant of Babil Mouth","Giant of Babil Neck","Giant of Babil Chest","-Glitch world-","Giant of Babil Stomach","Giant of Babil Passage","-Glitch world-","Giant of Babil Lung","Giant of Babil CPU","Giant of Babil background","-Glitch world-","Moving airship with soldiers","Fabul port","Boat sailing","Airship docked","Joined airships","Empty airship","Airship flying over underworld","Cave Eblan entrance","Cave Eblan Settlement","Cave Eblan pass to Babil","Cave Eblan exit","Cave Eblan Inn","Cave Eblan Equipment store","Cave Eblan Save point room","Cave Eblan Hospital","Fabul Chocobo forest","Empty airship","Mount Ordeals Chocobo forest","Baron Chocobo forest","Troia Chocobo forest","Island Chocobo forest","Baron Empty throne room","Empty airship w/ black bg","Empty airship","Empty airship underground","Empty airship w/ black bg","Tower of Wishes - final battle","Airship background","Large dock","-Glitch world-","-Glitch world-","Small dock","Mist Inn","Mist Weapons","Mist Armor","Kaipo Weapons","Kaipo Armor","Mysidia Weapons","Mysidia Armor","Mysidia Item store","Mythril Inn","Mythril Weapons","Mythril Armor","Mythril Items","Baron Items","Ending - Tower of Wishes","Ending - Palom and Leonora","Ending - Eblan throne room","Ending - Leviathan's room","Ending - Damcyan","Ending - Dwarf Castle","Ending - Mount Ordeals","Ending - Astro Tower","Ending - Cecil's room","Ending - Baron throne room","Ending - Fabul throne room","-Glitch world-","-Glitch world-","-Glitch world-","Overworld","Underworld","Moon surface","current map","Location trigger / VFX call","Smithy's house","Tomra","Smithy's house main floor","Smithy's house Smithy's room","Tomra Inn","Tomra Equipment store","Tomra Treasury","Dwarf Castle","Dwarf Castle Lobby","Dwarf Castle Throne room","Dwarf Castle Fat Chocobo room","Dwarf Castle Basement tunnel","Crystal room background","Dwarf Castle Crystal room","Dwarf Castle Equipment room","Dwarf Castle Basement w/ recovery pot","Dwarf Castle East tower 1F","Dwarf Castle Inn","Dwarf Castle Hospital","Dwarf Castle West tower 1F","Tower of Babil Save point","Tower of Babil Icebrand room","Tower of Babil Blizzard room","Tower of Babil Ice shield room","Tower of Babil Ice mail room","Dwarf Castle East tower 3F","Dwarf Castle West tower 3F","Dwarf Castle both towers 2F","Dwarf Castle background","Tower of Babil Floor w/ Lugae - 1","Tower of Babil Floor w/ Ice mail - 1","Tower of Babil Floor w/ Airship - 1","Dwarf Castle Cafe","Tower of Babil 1F","Tower of Babil 2F","Tower of Babil 3F","Tower of Babil 4F","Tower of Babil 5F","Tower of Babil Floor w/ airship - 2","Tower of Babil Floor w/ Ice mail - 2","Tower of Babil Floor w/ Lugae - 2","-Glitch world-","-Glitch world-","-Glitch world-","Lunar whale","Tower of Babil Cannon room","Dwarf tank","Lunar whale","Tower of Babil background","Ending - Palom and Leonora","Tomra Items","Tower of Wishes Top floor after Giant","Castle floor background","Town water background","Cave of Summons 1F","Cave of Summons 2F","Cave of Summons 3F","Sylvan Cave background","Feymarch 1F","Feymarch Treasury","Feymarch 2F","Feymarch House w/ save point","Feymarch Library 1F","Feymarch Library 2F","Feymarch Leviathan's room","Feymarch Weapons","Feymarch Armor","Feymarch Inn","Sealed Cave entrance","Sylvan Cave 1F","Sylvan Cave 2F","Sylvan Cave 3F","Sylvan Cave Treasury","Sylvan Cave Yang's room","Sealed Cave 1F","Sealed Cave Room w/ katana, ether","Sealed Cave 2F","Sealed Cave 3F","Sealed Cave Room w/ katana, ninja hat","Sealed Cave Room w/ ninja star, elixir","Sealed Cave Room w/ Light sword","Sealed Cave 4F","Sealed Cave 5F","Sealed Cave 6F","Sealed Cave Room w/ many boxes","Sealed Cave 7F","Sealed Cave Save point room","Sealed Cave Room w/ Demon Wall","Sealed Cave Empty room","Sealed Cave Crystal room","Bahamut's Cave 1F","Bahamut's Cave 2F","Bahamut's Cave Bahamut's floor","-Glitch world-","-Glitch world-","-Glitch world-","Lunar Palace Lobby","Lunar Palace Crystal room","Lunar background","First lunar passage","Second lunar passage","Hummingway land","Lunar's Lair background","Lunar Subterran 1F","Lunar Subterran 2F","Lunar Subterran 3F","Lunar Subterran 4F","Lunar Subterran 5F","Lunar Subterran 6F","Lunar Subterran 7F","Lunar Core 1F","Lunar Core 2F","Lunar Core 3F","Lunar Core 4F","Lunar Core Zemus' room","Lunar Subterran Room w/elixir","Lunar Subterran Tunnel w/ 2 Cure3s","Lunar Subterran Tunnel w/ Protect ring","Lunar Subterran Tunnel w/ White robe","Lunar Subterran Pinkpuff room","Lunar Subterran Save point near Ragnarok","Lunar Subterran Tunnel w/ Minerva","Lunar Subterran Room w/ Holy lance","Lunar Subterran Save point room","Lunar Subterran Room w/ Ribbons","Lunar Core background","-Glitch world-","-Glitch world-"}

areas[-3]="DummyValue"
areas[-2]="OverworldMap"
areas[-1]="UndergroundMap"
areas[0]="MoonSurface"

Baron={"BaronTownAreas",0,11,12,13,14,68,151,236}
BaronCastle={"BaronCastleAreas",36,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,102,103,138,213}
Mist={"MistAreas",1,15,83,224,225,226}
Kaipo={"KaipoAreas",2,16,17,18,227,228}
Mysidia={"MysidiaAreas",3,19,20,22,23,136,137,229,230,231}
Mythril={"MythrilAreas",4,232,233,234,235}
Troia={"TroiaAreas",5,7,8,9,10,24,25,26,28,29}
TroiaCastle={"TroiaCastleAreas",39,85,86,87,88,89,90,91,92,93}
Agart={"AgartAreas",6,30,31,32,69,70,139}
Damcyan={"DamcyanAreas",37,63,64,65,66,67}
Fabul={"FabulAreas",38,71,72,73,74,75,76,77,78,79,80,81,82}
Eblan={"EblanAreas",40,94,95,96,97,98,99,100,101}
Chocobo={"ChocoboAreas",33,207,209,210,211,212}

Smithy={"SmithyAreas",256,258,259}
Tomra={"TomraAreas",257,260,261,262,306}
Dwarf={"DwarfCastleAreas",263,264,265,266,267,269,270,271,272,273,274,275,281,282,283,288}
Feymarch={"FeymarchAreas",310,311,312,314,315,316,317,318,319,320,321,322,323}


MistCave={"MistCave",108}
WateryPass={"WateryPassAreas",84,106,111,112,113,114,115,116,117,118,131,150}
Antlion={"AntlionAreas",119,120,121,122,123}
Hobbs={"HobbsAreas",126,127,128,129}
Ordeals={"OrdealsAreas",21,132,133,134,135}
CaveMagnes={"CaveMagnesAreas",140,141,142,143,144,145,146,147,148,149,161}
Zot={"ZotAreas",152,153,154,156,157,158,159,162}

HookStuff={"HookStuff",160,166,167,168,169,170,171,172,199,200,201,202,203,204,205,206}

-- Need to check what is happening with 285-287, and 294-296, One of them belongs to hook route I think
Babil={"BabilAreas",276,277,278,279,280,285,286,287,289,290,291,292,293,294,295,296,301}
Sylph={"SylphAreas",325,326,327,328,329}
SealedCave={"SealedCaveAreas",324,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345}
Giant={"GiantAreas",181,182,183,185,186,188,189,190}
Moon={"MoonAreas",303,346,347,348,352,353,355,356,357,358,359,360,361,362,363,364,365,366,367,368,369,371,372,373,374,375,376,377,378,379,380}
Zeromus={"Zeromus",370}





Misc={"Misc",27,34,35,41,104,105,107,109,110,124,125,130,155,163,164,165,173,174,175,176,177,178,179,180,184,187,191,192,193,194,195,196,197,198,208,214,215,216,217,218,219,220,221,222,223,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,268,284,297,298,299,300,302,304,305,307,308,309,313,349,350,351,354,381,382,383}

Overworld={"Overworld",-3,Baron,BaronCastle,Mist,Kaipo,Mysidia,Mythril,Troia,TroiaCastle,Agart,Damcyan,Fabul,Eblan,Chocobo}
Underground={"Underground",-2,Smithy,Tomra,Dwarf,Feymarch}
MoonArea={"Moon",-1,Moon}
Dungeons={"Dungeons",-4,MistCave,WateryPass,Antlion,Hobbs,Ordeals,CaveMagnes,Zot,HookStuff,Babil,Sylph,SealedCave,Giant}

for i=-4, 80000 do
	area_battles[i]=0
	area_frames[i]=0
	area_menus[i]=0
end


local function myframe()
	local menu = memory.readbyte(0x7E0500)
	if(started) then
		--gui.text(60,60, "Running")
		local area = memory.readbyte(0x7E1700)
		local mapID = (memory.readbyte(0x7E1701) * 256) + memory.readbyte(0x7E1702)
		local battle = memory.readbyte(0x7E0201)
		
		if area == 0 then
		  mapID = -3
		end
		if area == 1 then
			mapID = -2
		end
		if area == 2 then
			mapID = -1
		end
		--gui.text(50,60, area_frames[0])
		area_frames[mapID] = area_frames[mapID] + 1
		if battle ~= 0x85 then
			area_battles[mapID] = area_battles[mapID] + 1
		elseif menu == 170 then
			area_menus[mapID] = area_menus[mapID] + 1
		end
	else
		gui.text(70,6, "paused")
		if not (menu == 170) then
			started=true
			lagcount=emu.lagcount()
			--gui.text(50,60, 2)
		end
	end
end

local function FormatTime(t)
	return string.format("\"minutes\":%d,\n\"seconds\":%d,\n\"frames\":%d\n",t/3600,(t%3600)/60,t%60)
end

local function FormatBottom(mylist)
	local i=2
	local timet=0
	local timeb=0
	local timem=0
	local index=0
	io.write(string.format("{\n\"name\": \"%s\",\n",mylist[1]))
	io.write(string.format("\"child-areas\": [\n"))
	while mylist[i] do
		index=mylist[i]
		io.write(string.format("{\n\"name\": \"%s\",\n",areas[index+1]))
		io.write(string.format("\"time\": {\n%s},\n",FormatTime(area_frames[index])))
		io.write(string.format("\"menu\": {\n%s},\n",FormatTime(area_menus[index])))
		io.write(string.format("\"battle\": {\n%s}\n}",FormatTime(area_battles[index])))
		timet=timet+area_frames[index]
		timeb=timeb+area_battles[index]
		timem=timem+area_menus[index]
		i=i+1
		if(mylist[i]) then
			io.write(",\n")
		else
			io.write("\n")
		end
	end
	io.write(string.format("],\n\"time\": {\n%s},\n",FormatTime(timet)))
	io.write(string.format("\"menu\": {\n%s},\n",FormatTime(timem)))
	io.write(string.format("\"battle\": {\n%s}\n}\n",FormatTime(timeb)))
	return timet,timeb,timem
end

local function FormatTop(mylist)
	local i=3
	local timet=0
	local timeb=0
	local timem=0
	local temp1=0
	local temp2=0
	local temp3=0
	local index=0
	io.write(string.format("\"%s\": {\n\"child-areas\":[\n{\n",mylist[1]))
	io.write(string.format("\"name\": \"%s\",\n",areas[mylist[2]+1]))
	io.write(string.format("\"time\": {\n%s},\n",FormatTime(area_frames[mylist[2]])))
	io.write(string.format("\"menu\": {\n%s},\n",FormatTime(area_menus[mylist[2]])))
	io.write(string.format("\"battle\": {\n%s}\n},\n",FormatTime(area_battles[mylist[2]])))
	timet=timet+area_frames[mylist[2]]
	timeb=timeb+area_battles[mylist[2]]
	timem=timem+area_menus[mylist[2]]
	while mylist[i] do
		temp1,temp2,temp3 = FormatBottom(mylist[i])
		timet=timet+temp1
		timeb=timeb+temp2
		timem=timem+temp3
		i=i+1
		if(mylist[i]) then
			io.write(",\n")
		else
			io.write("\n")
		end
	end
	io.write(string.format("\n],\n\"time\": {\n%s},\n",FormatTime(timet)))
	io.write(string.format("\"menu\": {\n%s},\n",FormatTime(timem)))
	io.write(string.format("\"battle\": {\n%s}\n},\n",FormatTime(timeb)))
	return timet,timeb,timem
end


local function myexit()
	file = io.open("frames.json", "a")
	local timet=0
	local timeb=0
	local timem=0
	local temp1=0
	local temp2=0
	local temp3=0
	io.output(file)
	io.write("{\n")
	timet,timeb,timem=FormatTop(Overworld)
	temp1,temp2,temp3=FormatTop(Underground)
	timet=timet+temp1
	timeb=timeb+temp2
	timem=timem+temp3
	temp1,temp2,temp3=FormatTop(Dungeons)
	timet=timet+temp1
	timeb=timeb+temp2
	timem=timem+temp3
	temp1,temp2,temp3=FormatTop(MoonArea)
	timet=timet+temp1
	timeb=timeb+temp2
	timem=timem+temp3
	io.write(string.format("\"Zeromus\": "))
	temp1,temp2,temp3=FormatBottom(Zeromus)
	timet=timet+temp1
	timeb=timeb+temp2
	timem=timem+temp3
	io.write(string.format(",\n\"Misc\": "))
	temp1,temp2,temp3=FormatBottom(Misc)
	timet=timet+temp1
	timeb=timeb+temp2
	timem=timem+temp3
	lagcount=emu.lagcount()-lagcount
	io.write(string.format(",\n\"time\": {\n%s},\n",FormatTime(timet)))
	io.write(string.format("\"menu\": {\n%s},\n",FormatTime(timem)))
	io.write(string.format("\"battle\": {\n%s},\n",FormatTime(timeb)))
	io.write(string.format("\"lag frames\": {\n%s}\n}\n",FormatTime(lagcount)))
	io.close(file)
end

emu.registerbefore(myframe)
emu.registerexit(myexit)