function onCreate()
	--background boi
	makeLuaSprite('skyFK','myhorison/sky', -800, -250)
    makeLuaSprite('grassFK','myhorison/grass', -800, 400)
    makeLuaSprite('grassBack','myhorison/grass2', -800, 400)
	makeLuaSprite('grassBack2','myhorison/grass2_Dark', -600, 100)
    makeLuaSprite('Tree','myhorison/Tree', 100, -350)
    makeLuaSprite('FL','myhorison/Flower', 1800, 400)
    makeLuaSprite('FL2','myhorison/Flower', -200, 400)
    makeLuaSprite('dark','myhorison/Flash', -800, -250)
    makeLuaSprite('sosad','myhorison/im_so_sad', 0, 0)

    addLuaSprite('skyFK')
	addLuaSprite('grassBack2')
    addLuaSprite('grassFK')
	addLuaSprite('grassBack', true);
	addLuaSprite('FL2')
	addLuaSprite('Tree')
	addLuaSprite('FL')
	addLuaSprite('dark')
	addLuaSprite('sosad')
    setObjectCamera('sosad', 'other');

	setProperty('sosad.visible',false);
	setProperty('dark.alpha', 0);
end

function opponentNoteHit()
    health = getProperty('health')
    if damage == true then
        if getProperty('health') > 0.4 then
            setProperty('health', health- 0.02);
		end
    end
end