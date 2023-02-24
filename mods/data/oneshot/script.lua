function onEvent(n,v1,v2)
   if n == 'Change Character' and v2 == 'bftall-BO' then
   
      setProperty('backback.visible',false)
      setProperty('subway.visible',false)
      setProperty('pillars.visible',false)
      setProperty('bench.visible',false)
      removeLuaScript('stages/better')
   
   end
   if n == 'Change Character' and v2 == 'bftall'then

      setProperty('backback.visible',true)
      setProperty('subway.visible',true)
      setProperty('pillars.visible',true)
      setProperty('bench.visible',true)
   
   end

end

function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bftall');
   setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx');
   setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver');
   setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd');
end

function onBeatHit()
	if curBeat == 228 or curBeat == 230 or curBeat == 232 or curBeat == 234 or curBeat == 236 or curBeat == 238 or curBeat == 240 or curBeat == 242 or curBeat == 244 or curBeat == 246 or curBeat == 248 or curBeat == 250 or curBeat == 252 or curBeat == 254 or curBeat == 256 or curBeat == 258 then
       doTweenAngle('bruh', 'camHUD', 2.5, 0.1, 'linear')
    end
    if curBeat == 229 or curBeat == 231 or curBeat == 233 or curBeat == 235 or curBeat == 237 or curBeat == 239 or curBeat == 241 or curBeat == 243 or curBeat == 245 or curBeat == 247 or curBeat == 249 or curBeat == 251 or curBeat == 253 or curBeat == 255 or curBeat == 257 or curBeat == 259 then
       doTweenAngle('bruh', 'camHUD', -2.5, 0.1, 'linear')
    end
    if curBeat == 260 then
        doTweenAngle('bruh', 'camHUD', 0, 0.1, 'linear')
    end
    if curBeat == 356 or curBeat == 358 or curBeat == 360 or curBeat == 362 or curBeat == 364 or curBeat == 366 or curBeat == 368 or curBeat == 370 or curBeat == 372 or curBeat == 374 or curBeat == 376 or curBeat == 378 or curBeat == 380 or curBeat == 382 or curBeat == 384 or curBeat == 386 or curBeat == 388 or curBeat == 390 or curBeat == 392 or curBeat == 394 or curBeat == 396 or curBeat == 398 or curBeat == 400 or curBeat == 402 or curBeat == 404 or curBeat == 406 or curBeat == 408 or curBeat == 410 or curBeat == 412 or curBeat == 414 or curBeat == 416 or curBeat == 418 then
        doTweenAngle('bruh', 'camHUD', 2.5, 0.1, 'linear')
     end
     if curBeat == 357 or curBeat == 359 or curBeat == 361 or curBeat == 363 or curBeat == 365 or curBeat == 367 or curBeat == 369 or curBeat == 371 or curBeat == 373 or curBeat == 375 or curBeat == 377 or curBeat == 379 or curBeat == 381 or curBeat == 383 or curBeat == 385 or curBeat == 387 or curBeat == 389 or curBeat == 391 or curBeat == 393 or curBeat == 395 or curBeat == 397 or curBeat == 399 or curBeat == 401 or curBeat == 403 or curBeat == 405 or curBeat == 407 or curBeat == 409 or curBeat == 411 or curBeat == 413 or curBeat == 415 or curBeat == 417 then
        doTweenAngle('bruh', 'camHUD', -2.5, 0.1, 'linear')
     end
     if curBeat == 420 then
         doTweenAngle('bruh', 'camHUD', 0, 0.1, 'linear')
     end
end