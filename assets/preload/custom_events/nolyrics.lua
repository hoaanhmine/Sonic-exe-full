local disableLyrics = false
local colorLyrics = nil
local textLyrics = ''
local LyricsInExecutation = false
LyricsInExecutation = true

function onUpdate()
    if disableLyrics == true then
        setProperty('LyricsWow.alpha',getProperty('LyricsWow.alpha') - 0.05)
    end
end
function onEvent(name,v1,v2)
    if name == 'nolyrics' then
        textLyrics = v1
        if string.find(v1,'-') ~= nil and string.find(v1,'-') ~= '' then
            colorLyrics = string.sub(textLyrics,string.find(textLyrics,'-')/1 + 2)
            textLyrics = string.gsub(textLyrics,string.sub(textLyrics,string.find(textLyrics,'-')/1),'')
        else
            colorLyrics = 'FFFFFF'
        end
        makeLuaText('LyricsWow',textLyrics,1280,0,600)
        setTextColor('LyricsWow',colorLyrics)
        setTextBorder('LyricsWow',0.1,colorLyrics)
        setProperty('LyricsWow.scale.x',1.5)
        setProperty('LyricsWow.scale.y',1.5)
        if getPropertyFromClass('PlayState','isPixelStage') == true then
            setProperty('LyricsWow.antialiasing',true)
            setTextFont('LyricsWow','sonic-1-hud-font.ttf')
            setProperty('LyricsWow.scale.x',2.2)
            setProperty('LyricsWow.scale.y',2)
        else
            setTextBorder('LyricsWow',0,colorLyrics)
        end
        disableLyrics = false
        LyricsInExecutation = true
        runTimer('removeLyricsEvent',v2)
        setProperty('LyricsWow.alpha',1)
        runTimer('removeLyricsBars',v2 + 2)
        setObjectCamera('LyricsWow','other')
        addLuaText('LyricsWow',true)
  
    elseif name == 'Close Lyrics' and LyricsInExecutation == true then
        LyricsInExecutation = false
        disableLyrics = true
        backBorders()
    end
end
function onTimerCompleted(tag)
    if tag == 'removeLyricsEvent' then
        disableLyrics = true
    end
end
