function onCreate()--fatal
--sonicesputo
  makeAnimatedLuaSprite('truefatalstage', 'fatal/truefatalstage', -1050, -850); 
  addAnimationByPrefix('truefatalstage', 'truefatalstage', 'idle', 15, true);  
  objectPlayAnimation('truefatalstage', 'truefatalstage', true)
  scaleObject('truefatalstage', 5, 5);
  addLuaSprite('truefatalstage', false);
  setProperty('truefatalstage.visible', true);
  --aaeeoo
  makeAnimatedLuaSprite('domain2', 'fatal/domain2', -1050, -750); 
  addAnimationByPrefix('domain2', 'domain2', 'idle', 15, true);  
  objectPlayAnimation('domain2', 'domain2', true)
  scaleObject('domain2', 5, 5);
  addLuaSprite('domain2', false);
  setProperty('domain2.visible', true);
  --hello
  makeAnimatedLuaSprite('domain', 'fatal/domain', -1050, -630); 
  addAnimationByPrefix('domain', 'domain', 'idle', 15, true);  
  objectPlayAnimation('domain', 'domain', true)
  scaleObject('domain', 4.5, 4.5);
  addLuaSprite('domain', false);
  setProperty('domain.visible', true);
  
  makeAnimatedLuaSprite('launchbase', 'fatal/launchbase', -1050, -1110); 
  addAnimationByPrefix('launchbase', 'launchbase', 'idle', 15, true);  
  objectPlayAnimation('launchbase', 'launchbase', true)
  scaleObject('launchbase', 6, 6);
  addLuaSprite('launchbase', false);
  setProperty('launchbase.visible', true);
  
  setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-fatal-death')
   setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fatal-death')
   setPropertyFromClass('GameOverSubstate', 'loopSoundName', '')
   setPropertyFromClass('GameOverSubstate', 'endSoundName', '')
end


function onEvent(name,value1,value2)
if name == "esotilin" then
if value1 == "aaa" then
setProperty('launchbase.visible', false);
objectPlayAnimation('domain', 'domain', true)
triggerEvent('Camera Follow Pos', '', '');
setProperty('domain.visible', true);
end 
if value1 == "eee" then
setProperty('domain.visible', false);
objectPlayAnimation('truefatalstage', 'truefatalstage', true)
triggerEvent('Camera Follow Pos', '', '');
setProperty('truefatalstage.visible', true);
end
if value1 == "ooo" then
setProperty('domain2.visible', false);
objectPlayAnimation('truefatalstage', 'truefatalstage', true)
setProperty("defaultCamZoom", 0.7)
triggerEvent('Camera Follow Pos', '', '');
setProperty('truefatalstage.visible', true);


end
--i hope you don't steal this
function onBeatHit()

     if curBeat %1 == 0 then

        setProperty('timeBar.color', getColorFromHex('ff0015'))
       end
    end
  end
end