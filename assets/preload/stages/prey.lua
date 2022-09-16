function onCreate()

 makeLuaSprite('city', 'starved/city', 150, -400);

   setPropertyFromClass('GameOverSubstate', 'characterName', 'sonic-gameover')
   setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'prey-death')
   setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'prey-loop')
   setPropertyFromClass('GameOverSubstate', 'endSoundName', 'prey-retry')


end