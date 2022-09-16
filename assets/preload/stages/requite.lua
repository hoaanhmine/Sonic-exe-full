function onStepHit()
    if songName == 'forestall-desire' then
        if curStep == 1 and middlescroll == false then
            for strums = 0,4 do
                setPropertyFromGroup('playerStrums', strums,'x',92 + (112 * strums))
                setPropertyFromGroup('opponentStrums', strums,'x',732 + (112 * strums))
            end
        end
	end
end