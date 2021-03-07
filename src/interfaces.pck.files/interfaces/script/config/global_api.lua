--102
lua_glb = {}

function lua_glb:check_md5(mapid)
	local maps = {}

	local files = {}
	files["Maps\\a14\\a14.ecbsd"] = "72771F66BB0845E5E33A36BA799A0242";
	files["Maps\\a14\\a14_1.t2bk"] = "BE0B61DDE3ACF5D724FA2F8E1360A97C";
	files["Maps\\a14\\bsdata\\1.dat"] = "66CAACCCF43306C67B19880137767155";	
	files["Maps\\a14\\a14.ecwld"] = "BE336CEB717A04BEB42EC28FCB1AFFD9";
	files["Maps\\a14\\a14.trn2"] = "C1BCE2047E81D41F45F073EDBBBBCB17";		
	maps["a14"] = files;

	local files = {}
	files["Maps\\a15\\a15.ecbsd"] = "62221523C7749B3BE20D806E5FB3CB33";
	files["Maps\\a15\\a15_1.t2bk"] = "CF8472C75C7938C8DCAFC55C6BC89FF9";
	files["Maps\\a15\\bsdata\\1.dat"] = "B746EB48F27A0C97627A83BCF795AD29";	
	files["Maps\\a15\\a15.ecwld"] = "248E965B2888DB1616CE8EAD2B1AE80E";
	files["Maps\\a15\\a15.trn2"] = "5D5C1596D08632AB210591A78F5011D7";		
	maps["a15"] = files;

	local files = {}
	files["Maps\\a16\\a16.ecbsd"] = "47F081DF188456A6CACCBC0A9A904016";
	files["Maps\\a16\\a16_1.t2bk"] = "25DFF317F051184DEB66C4B947121BFD";
	files["Maps\\a16\\bsdata\\1.dat"] = "745C13AADC9A3A0B2F3402057F69B574";	
	files["Maps\\a16\\a16.ecwld"] = "3BFF23C24CEA009C2DA921796635F443";
	files["Maps\\a16\\a16.trn2"] = "44D0464029090B2CE36D41DCB121C2DC";		
	maps["a16"] = files;

	local files = {}
	files["Maps\\a17\\a17.ecbsd"] = "40DD578070D367BD784288E4271DEA8B";
	files["Maps\\a17\\a17_1.t2bk"] = "82057EFFC907A0082CE6407DEE57D51E";
	files["Maps\\a17\\bsdata\\1.dat"] = "19E5AFB02A2B73577F3B80B6284E6B28";	
	files["Maps\\a17\\a17.ecwld"] = "0890CB9615FE72A47F630954CA47C01F";
	files["Maps\\a17\\a17.trn2"] = "A839CFF15454A8F985C99A626DA7FA5D";		
	maps["a17"] = files;

	local files = {}
	files["Maps\\a23\\a23.ecbsd"] = "7B3E20606CCD278762E6C91967E7271D";
	files["Maps\\a23\\a23_5.t2bk"] = "1AE2D6F0BCC22646D5DE696A06F7417C";
	files["Maps\\a23\\bsdata\\5.dat"] = "486A3C62CEB13AA71E1D760BCBE930EF";
	files["Maps\\a23\\a23.ecwld"] = "7E11115CED1A94DB47F5D631A6DFD4F9";
	files["Maps\\a23\\a23.trn2"] = "AD1A04A13534379842818AA53B6369F8";		
	maps["a23"] = files;

	local files = {}
	files["Maps\\a24\\a24.ecbsd"] = "5C404E17276916B06F6B7C0C8892A556";
	files["Maps\\a24\\a24_1.t2bk"] = "3DF4F7E625075087A63824B285CAF68B";
	files["Maps\\a24\\bsdata\\1.dat"] = "DB10EE3B98A096F42D02E2CD5C29EB42";
	files["Maps\\a24\\a24.ecwld"] = "969436DDB9F065CD828924D389C7D20F";
	files["Maps\\a24\\a24.trn2"] = "AA8E8C64745A0FC3E7637E0A85106091";		
	maps["a24"] = files;

		local files_to_check = maps[string.lower(mapid)]
	if files_to_check == nil then
		return true
	end

	local f, m
	for f,m in pairs(files_to_check) do
		md5 = GlobalApi.lua_glb_CalcFileMd5(f)
		if string.lower(m) ~= string.lower(md5) then
			return false
		end	 
	end
	
 	return true
end