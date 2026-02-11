-- Function to switch layouts based on app
local function switchLayoutForApp(bundleId)
  if not bundleId then return end
  
  -- Apps that should use Russian
  if(bundleId == "ru.keepcoder.Telegram"
     or bundleId == "one.ayugram.AyuGramDesktop")
  then
    hs.keycodes.setLayout("Russian")
  
  -- Default to English for all other apps (including Raycast)
  else
    hs.keycodes.setLayout("ABC")
  end
end

-- Watch for app activation/unhidden events
appwatcher = hs.application.watcher.new(function(appName, eventType, appObject)
  if eventType == hs.application.watcher.activated or eventType == hs.application.watcher.unhidden then
    switchLayoutForApp(appObject:bundleID())
  end
end)
appwatcher:start()

-- Detect Cmd+Space for Raycast (overlay launcher - doesn't change focus)
raycastTap = hs.eventtap.new({hs.eventtap.event.types.keyDown}, function(event)
  local flags = event:getFlags()
  local keyCode = event:getKeyCode()
  
  -- Check if Cmd+Space is pressed (keyCode 49 is Space)
  if flags.cmd and not flags.shift and not flags.alt and not flags.ctrl and keyCode == 49 then
    -- Small delay to let Raycast open
    hs.timer.doAfter(0.05, function()
      hs.keycodes.setLayout("ABC")
    end)
  end
  
  return false -- Don't block the event
end)
raycastTap:start()
