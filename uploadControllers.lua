result = RunCommand('getControllerIPs', {})
Log('result = ' .. result['res'])
controllers = result['controllers']
arraylength = #controllers
for i=0,arraylength do
    IP = controllers[i]
	Log('IP =' .. IP)
	parm = {}
	parm['ip'] = IP
    result = RunCommand('uploadController', parm)	
    Log('result = ' .. result['msg'])
end



