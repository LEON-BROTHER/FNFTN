function onCreatePost() 
    addLuaScript("characterscripts/carolscript")
    makeLuaSprite("vignette", "vignette", 0, 0)
    addLuaSprite("vignette", true)
    setObjectCamera("vignette", "hud")
    setObjectOrder("vignette",getObjectOrder("strumLineNotes"))

end
