local obj={}

hyper = { "right_command", "right_control", "right_option", "right_shift" }
--  -- MacOS
-- ℝ -- Rider IDE

apps_list =
{

-- ┌—————┐__MAIN_LAYER_EN__┌—————┬—————┬—————┬—————┬—————┬—————┬—————┬—————┬—————┬————————┐
-- │  `  │  1  │  2  │  3  │  4  │  5  │  6  │  7  │  8  │  9  │  0  │  -  │  =  │     ⌫  │
-- ├—————┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬——————┤
-- │  ⇥    │  q  │  w  │  e  │  r  │  t  │  y  │  u  │  i  │  o  │  p  │  [  │  ]  │   ↩  │
-- ├———————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┐     │
-- │ HYPER  │  a  │  s  │  d  │  f  │  g  │  h  │  j  │  k  │  l  │  ;  │  '  │  \  │     │
-- ├————————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴—————┴—————┤
-- │  ⇧      │  z  │  x  │  c  │  v  │  b  │  n  │  m  │  ,  │  .  │  /  │             ⇧  │
-- ├————————┬┴————┬┴—————┼—————┴—————┴—————┴—————┴—————┼—————┴┬————┴————┬┴————————————————┘
-- │  ⌃     │  ⌥  │   ⌘  │           SPACE             │      │    ⌥    │
-- └————————┴—————┴——————┴—————————————————————————————┴——————┴—————————┘

-- ┌—————┐__MAIN_LAYER_RU__┌—————┬—————┬—————┬—————┬—————┬—————┬—————┬—————┬—————┬————————┐
-- │  ё  │  1  │  2  │  3  │  4  │  5  │  6  │  7  │  8  │  9  │  0  │  -  │  =  │     ⌫  │
-- ├—————┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬——————┤
-- │  ⇥    │  й  │  ц  │  у  │  к  │  е  │  н  │  г  │  ш  │  щ  │  з  │  х  │  ъ  │   ↩  │
-- ├———————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┐     │
-- │ HYPER  │  ф  │  ы  │  в  │  а  │  п  │  р  │  о  │  л  │  д  │  ж  │  э  │  \  │     │
-- ├————————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴—————┴—————┤
-- │  ⇧      │  я  │  ч  │  с  │  м  │  и  │  т  │  ь  │  б  │  ю  │  .  │             ⇧  │
-- ├————————┬┴————┬┴—————┼—————┴—————┴—————┴—————┴—————┼—————┴┬————┴————┬┴————————————————┘
-- │  ⌃     │  ⌥  │   ⌘  │           SPACE             │      │    ⌥    │
-- └————————┴—————┴——————┴—————————————————————————————┴——————┴—————————┘

-- ┌—————┐__MAIN_LAYER_GR__┌—————┬—————┬—————┬—————┬—————┬—————┬—————┬—————┬—————┬————————┐
-- │  §  │  1  │  2  │  3  │  4  │  5  │  6  │  7  │  8  │  9  │  0  │  -  │  =  │     ⌫  │
-- ├—————┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬——————┤
-- │  ⇥    │  ;  │  ς  │  ε  │  ρ  │  τ  │  υ  │  θ  │  ι  │  ο  │  π  │  [  │  ]  │   ↩  │
-- ├———————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┐     │
-- │ HYPER  │  α  │  σ  │  δ  │  φ  │  γ  │  η  │  ξ  │  κ  │  λ  │  ΄  │  '  │  \  │     │
-- ├————————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴—————┴—————┤
-- │  ⇧      │  ζ  │  χ  │  ψ  │  ω  │  β  │  ν  │  μ  │  ,  │  .  │  /  │             ⇧  │
-- ├————————┬┴————┬┴—————┼—————┴—————┴—————┴—————┴—————┼—————┴┬————┴————┬┴————————————————┘
-- │  ⌃     │  ⌥  │   ⌘  │           SPACE             │      │    ⌥    │
-- └————————┴—————┴——————┴—————————————————————————————┴——————┴—————————┘

-- ┌—————┐__SHIFT_LAYER_EN_┌—————┬—————┬—————┬—————┬—————┬—————┬—————┬—————┬—————┬————————┐
-- │  ~  │  !  │  @  │  #  │  $  │  %  │  ^  │  &  │  *  │  (  │  )  │  _  │  +  │        │
-- ├—————┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬——————┤
-- │  ⇥    │  Q  │  W  │  E  │  R  │  T  │  Y  │  U  │  I  │  O  │  P  │  {  │  }  │   ↩  │
-- ├———————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┐     │
-- │        │  A  │  S  │  D  │  F  │  G  │  H  │  J  │  K  │  L  │  :  │  "  │  |  │     │
-- ├————————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴—————┴—————┤
-- │  🟢🟢🟢  │  Z  │  X  │  C  │  V  │  B  │  N  │  M  │  <  │  >  │  ?  │                │
-- ├————————┬┴————┬┴—————┼—————┴—————┴—————┴—————┴—————┼—————┴┬————┴————┬┴————————————————┘
-- │        │     │      │                             │      │         │
-- └————————┴—————┴——————┴—————————————————————————————┴——————┴—————————┘

-- tab - app - move block left
-- left - select letter to the left
-- right - select letter to the right
-- up - move caret up and select text from the initial position
-- down - move caret down and select text from the initial position

-- ┌—————┐__SHIFT_LAYER_RU_┌—————┬—————┬—————┬—————┬—————┬—————┬—————┬—————┬—————┬————————┐
-- │  Ё  │  !  │  "  │  №  │  ;  │  %  │  :  │  ?  │  *  │  (  │  )  │  _  │  +  │        │
-- ├—————┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬——————┤
-- │  ⇥    │  Й  │  Ц  │  У  │  К  │  Е  │  Н  │  Г  │  Ш  │  Щ  │  З  │  Х  │  Ъ  │   ↩  │
-- ├———————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┐     │
-- │        │  Ф  │  Ы  │  В  │  А  │  П  │  Р  │  О  │  Л  │  Д  │  Ж  │  Э  │     │     │
-- ├————————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴—————┴—————┤
-- │  🟢🟢🟢  │  Я  │  Ч  │  С  │  М  │  И  │  Т  │  Ь  │  Б  │  Ю  │  ,  │                │
-- ├————————┬┴————┬┴—————┼—————┴—————┴—————┴—————┴—————┼—————┴┬————┴————┬┴————————————————┘
-- │        │     │      │                             │      │         │
-- └————————┴—————┴——————┴—————————————————————————————┴——————┴—————————┘

-- ┌—————┐__SHIFT_LAYER_GR_┌—————┬—————┬—————┬—————┬—————┬—————┬—————┬—————┬—————┬————————┐
-- │  ±  │  !  │  @  │  #  │  $  │  %  │  ^  │  &  │  *  │  (  │  )  │  _  │  +  │        │
-- ├—————┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬——————┤
-- │  ⇥    │  :  │  ΅  │  Ε  │  Ρ  │  Τ  │  Υ  │  Θ  │  Ι  │  Ο  │  Π  │  {  │  }  │   ↩  │
-- ├———————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┐     │
-- │        │  Α  │  Σ  │  Δ  │  Φ  │  Γ  │  Η  │  Ξ  │  Κ  │  Λ  │  ¨  │  "  │  |  │     │
-- ├————————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴—————┴—————┤
-- │  🟢🟢🟢  │  Ζ  │  Χ  │  Ψ  │  Ω  │  Β  │  Ν  │  Μ  │  <  │  >  │  ?  │                │
-- ├————————┬┴————┬┴—————┼—————┴—————┴—————┴—————┴—————┼—————┴┬————┴————┬┴————————————————┘
-- │        │     │      │                             │      │         │
-- └————————┴—————┴——————┴—————————————————————————————┴——————┴—————————┘

{ modifier=alt, chords={
-- ┌—————┐____ALT_LAYER____┌—————┬—————┬—————┬—————┬—————┬—————┬—————┬—————┬—————┬————————┐
-- │  `  │  ¹  │  ²  │  ³  │  $  │  ‰  │  ↑  │     │  ∞  │  ←  │  →  │  —  │  ≠  │       │
-- ├—————┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬———┴—┬——————┤
-- │  ⇥    │  ·  │  ✓  │  €  │  ®  │  ™  │  ѣ  │  ѵ  │  і  │  ѳ  │  ′  │  [  │  ]  │   ℝ  │
-- ├———————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┐     │
-- │        │  ≈  │  §  │  °  │  £  │     │  ₽  │  „  │  “  │  ”  │  ‘  │  ’  │  |  │     │
-- ├————————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴┬————┴—————┴—————┤
-- │         │     │  ×  │  ©  │  ↓  │  ß  │     │  −  │  «  │  »  │  …  │                │
-- ├————————┬┴————┬┴—————┼—————┴—————┴—————┴—————┴—————┼—————┴┬————┴————┬┴————————————————┘
-- │        │🟢🟢🟢│      │                             │      │         │
-- └————————┴—————┴——————┴—————————————————————————————┴——————┴—————————┘
-- ⌫ -  — remove word to the left
-- tab - switch the app windows with AltTab app
-- ↩ — ℝ — Fix Suggestion popup
-- \ — Copilot Suggestion
-- up — move line up
-- left - jump a word to the left
-- down — move line down
-- right - jump a word to the right
}},
{ modifier=left_command, chords={
    -- /------__CMD_LAYER___-------------------------------------------------------------------------------\
    -- │    │  ℝ  │  ℝ  │  ℝ  │ ℝ  │   │    │    │ ℝ   │    │    │     │   ℝ       │
    -- │---------------------------------------------------------------------------------------------------+
    -- │     │    │    │  ℝ  │  ℝ │     │    │    │    │    │    │ ℝ │ ℝ │ ℝ │
    -- │---------------------------------------------------------------------------------------------------+
    -- │       │    │    │  ℝ  │  ℝ  │ ℝ   │    │    │    │    │    │    │      |
    -- |---------------------------------------------------------------------------------------------------+
    -- |        |   |  |  | | ℝ |    |    |  |    | ℝ |              |
    -- |---------------------------------------------------------------------------------------------------+
    -- |     |       | 🟢🟢🟢 |            ℝ                |      |    |       |     |
    -- \---------------------------------------------------------------------------------------------------/
    -- ` -
    -- 1 - ℝ - focus solution explorer
    -- 2 - ℝ - focus debug window
    -- 3 - ℝ - focus unit tests explorer
    -- 4 - ℝ - focus build window
    -- 5 -
    -- 6 -
    -- 7 -
    -- 8 - ℝ - focus logcat
    -- 9 -
    -- 0 - app - Reset zoom
    -- - - app - Zoom out
    -- = - app - Zoom in
    -- ⌫ - ℝ - delete line
    -- q -  - close current app
    -- w -  - close current tab
    -- e - ℝ - recent files dialog
    -- r - ℝ - replace in current file
    -- t -  - new tab
    -- y - app - show all history
    -- u -
    -- i -
    -- o -  - open file
    -- p -  - print
    -- [ - (ℝ - navigate back) ; (Finder — navigate back) ; (Browser — navigate back)
    -- ] - (ℝ - navigate forward) ; (Finder — navigate forward) ; (Browser — navigate forward)
    -- a -  - select all
    -- s - app - save
    -- d - ℝ - duplicate line
    -- f -  - find (in current file)
    -- g - ℝ - git operations popup
    -- h -  - hide current app
    -- j -
    -- k -
    -- l -
    -- ; -
    -- ' -
    -- z -  - undo
    -- x -  - cut text
    -- c -  - copy text
    -- v -  - paste text
    -- b - ℝ - go to declaration
    -- n - app - new window
    -- m -  - minimize window
    -- , -  - show settings of current app
    -- . -
    -- ℝ / - comment line
    -- ℝ space - Basic code completion
}},
    { modifier=left_control, chords={
        -- /------__CONTROL_LAYER___------------------------------------------------------------------\
        -- |     |  ℝ  |       |      |    |    |    |    |    |    |    |    |     |             |
        -- |------------------------------------------------------------------------------------------+
        -- | ℝ  |  ℝ |  ℝ  | ℝ |  ℝ  |   |    |   |    | ℝ |    |    |    |   |
        -- |------------------------------------------------------------------------------------------+
        -- | Hyper   |  ℝ  |  ℝ  |  ℝ  |  ℝ  | ℝ  |    |    |    |    |    |   |  |
        -- |------------------------------------------------------------------------------------------+
        -- | ℝ   |      |       |      |       |      |    |    |     |    |    |                 |
        -- |------------------------------------------------------------------------------------------+
        -- | 🟢🟢🟢 |       |       |                               |       |      |      |    |
        -- \------------------------------------------------------------------------------------------/
        -- F3 -  - Move focus to Dock
        -- F5 -  - Move focus to Window's Toolbar
        -- F6 -  - Move focus to Floating Win
        -- tab - app - switch tab forward
        -- q - ℝ - Stop all
        -- w - ℝ - close all notifications
        -- e - ℝ - Find Usages
        -- r - ℝ - Run
        -- o - ℝ - Override
        -- a - ℝ - Git Annotate
        -- s - ℝ - Save with format
        -- d - ℝ - Debug
        -- f - ℝ - Focus Find Window
        -- g - ℝ - Fofus Git Window
        -- space -  - change language layout
    }},
    { modifier=hyper, chords={
        -- /------__HYPER_LAYER___---------------------------------------------------------------------------------------\
        -- | ESC |  F1  |   F2    |  F3   | F4   | F5   | F6    | F7  | F8   | F9 |  F10   | F11    |  F12  | backspace  |
        -- |-------------------------------------------------------------------------------------------------------------+
        -- |     | pageup | up | pagedown | ℝ | Telegram |  YouTrack | Torrent |  | up | Music | prtrack | nxttrack |  |
        -- |-------------------------------------------------------------------------------------------------------------+
        -- |       |  r  |  t  |  y  |  u  |  i  |  o  |  p  |  [  |  ]  |  \  |  |  |  |
        -- |-------------------------------------------------------------------------------------------------------------+
        -- | 🟢🟢🟢 | left | down | right | Raycast  | Fork | Finder | Safari  | left | down | right | volume_up |     |
        -- |-------------------------------------------------------------------------------------------------------------+
        -- |      |  ↩  |  home   | end  |  Yandex | iTerm2  | Windsurf | ElMedia  | home | end |  volume_down  |    |
        -- |-------------------------------------------------------------------------------------------------------------+
        -- |     |      |       |         play/stop                |       |       |       |                             |
        -- \-------------------------------------------------------------------------------------------------------------/
        -- karabiner escape - tilda/ё
        -- 1 - F1
        -- 2 - F2
        -- 3 - F3
        -- 4 - F4
        -- 5 - F5
        -- 6 - F6
        -- 7 - F7
        -- 8 - F8
        -- 9 - F9
        -- 0 - F10
        -- - - F11
        -- = - F12
        -- ⌫ - delete
        -- alt + ⌫ — maccy delete row
        -- tab
        -- q - pageUp
        -- w - up
        -- e - pagedown
        { key="r", app="Rider" },
        { key="t", app="AyuGram", window_default_position="right" },
        { key="y", specific_function="show_youtrack" },
        { key="u", app="Transmission", window_default_position="right" },
        -- o - up
        { key="p", app="Music" },
        -- [ - previous track
        -- ] - next track
        -- a - left
        -- s - down
        -- d - right
        { key="f", app="Finder" },
        { key="g", app="Fork" },
        { key="h", app="Safari" },
        { key="j", specific_function="show_youtrack_tasks" },
        -- k - left
        -- l - down
        -- ; - right
        -- ' - volume up
        -- return - Day One
        -- z - ↩
        -- x - home
        -- c - end
        { key="v", app="Yandex" },
        { key="b", app="iTerm" },
        { key="n", app="Windsurf" },
        { key="m", app="Iina", window_default_position="bottom"},
        -- , - home
        -- . - end
        -- / - volume down
        -- left - Can't be pressed on AnnePro2
        -- right - Can't be pressed on AnnePro2
        -- up - Can't be pressed on AnnePro2
        -- down - Can't be pressed on AnnePro2
    }},
    { modifier={"left_command", "left_shift"}, chords={
        -- /------__CONTROL_LAYER___-----------------------------------------------------------------\
        -- |     |     |       |      |    |    |    |    |    |    |    |    |     |                |
        -- |-----------------------------------------------------------------------------------------+
        -- |    |   |     |     |    |   |    |   |    |    |    |    |    |                    |
        -- |-----------------------------------------------------------------------------------------+
        -- |        |      |      |       |  |      |    |    |    |    |    |    |             |
        -- |-----------------------------------------------------------------------------------------+
        -- |  🟢🟢🟢    |      |       |      |       |      |    |    |     |    |    |     🟢🟢🟢      |
        -- |-----------------------------------------------------------------------------------------+
        -- |      |       |  🟢🟢🟢  |                               |       |       |       |     |
        -- \-----------------------------------------------------------------------------------------/
        -- ` -
        -- 1 -
        -- 2 -
        -- 3 -
        -- 4 -
        -- 5 -
        -- 6 -
        -- 7 -
        -- 8 -
        -- 9 -
        -- 0 -
        -- - -
        -- / -
        -- delete - ℝ -go to last edit location
        -- q -  - quit all applications
        -- w -  - close window
        -- e - ℝ - recent locations popup
        -- r - ℝ - replace in files
        -- t -  - reopen closed tab
        -- y -
        -- u -
        -- i -
        -- o -
        -- p -
        -- [ -
        -- ] -
        -- \ -
        -- a -
        -- s -
        -- d -
        -- f - ℝ - search in files
        -- g -
        -- h -
        -- j -
        -- k -
        -- l -
        -- ; -
        -- ' -
        -- z -  - redo
        -- x -
        -- c - maccy — show history of the texts from buffer
        -- v -
        -- b -
        -- n -
        -- m -
        -- , -
        -- . -
        -- / - ℝ - comment
    }},
    { modifier={"left_command", "alt"}, chords={
        -- /------__CONTROL_LAYER___-------------------------------------------------------------------------\
        -- |     |     |       |      |    |    |    |    |    |    |    |    |     |            |           |
        -- |-------------------------------------------------------------------------------------------------+
        -- |      |     |    |  |    |   |    |   |    |    |    |    |    |     |                           |
        -- |-------------------------------------------------------------------------------------------------+
        -- |        |    |    |    | ℝ |   |    |    |    | Finder  |    |    |      |              |
        -- |-------------------------------------------------------------------------------------------------+
        -- |          |      |       | Finder | ℝ |      | ℝ | ℝ   |     |    |    |     |       |
        -- |-------------------------------------------------------------------------------------------------+
        -- |      | 🟢🟢🟢 | 🟢🟢🟢 |                              |       |     |      |    |       |
        -- \-------------------------------------------------------------------------------------------------/
        -- esc -  - force quit current app
        -- f -  - show/hide Dock
        -- f - ℝ - extract field
        -- h -  - hide all other windows
        -- l — (Finder — downloads) ; (Browser — downloads)
        -- c — Finder — Copy file's path
        -- v - (ℝ - extract variable) ; (Finder — move items here)
        -- n - ℝ - inline
        -- m - ℝ - extract method
    }},
    { modifier={"left_command", "left_control"}, chords={
        -- /------__CONTROL_LAYER___-----------------------------------------------------------------\
        -- |     |     |       |      |    |    |    |    |    |    |    |    |     |                |
        -- |-----------------------------------------------------------------------------------------+
        -- |    |   |     |     |    |   |    |   |    |    |    |    |    |                    |
        -- |-----------------------------------------------------------------------------------------+
        -- |        |      |      |       |  |      |    |    |    |    |    |    |             |
        -- |-----------------------------------------------------------------------------------------+
        -- |          |      |       |      |       |      |    |    |     |    |    |               |
        -- |-----------------------------------------------------------------------------------------+
        -- |      |       |       |                                |       |       |       |         |
        -- \-----------------------------------------------------------------------------------------/
        -- q - logout
        -- f - toggle fullscreen of current app
        -- d -  - look up the selected word
        -- space -  - emogies
    }},
    { modifier= {"left_control", "left_shift"}, chords={
        -- /------__CONTROL_LAYER___-----------------------------------------------------------------\
        -- |     |  ℝ  |       |      |    |    |    |    |    |    |    |    |     |            |
        -- |-----------------------------------------------------------------------------------------+
        -- | ℝ  |  ℝ |  ℝ  | ℝ |  ℝ  |   |    |   |    |    |    |    |    |     |
        -- |-----------------------------------------------------------------------------------------+
        -- |        |  ℝ  |  ℝ  |  ℝ  |  ℝ  | ℝ  |    |    |   |   |    |    |   |
        -- |-----------------------------------------------------------------------------------------+
        -- |  🟢🟢🟢    |      |       |      |       |      |    |    |     |    |    |               |
        -- |-----------------------------------------------------------------------------------------+
        -- |  🟢🟢🟢  |       |       |                               |       |       |       |     |
        -- \-----------------------------------------------------------------------------------------/
        { key="escape", app="Activity Monitor" },
        -- tab - ℝ - go to previous tab
        -- q -  - log out with dialogs
        -- r - ℝ — Run Unit Tests
        -- p - app - open private window
        -- d - ℝ - Debug Unit Tests
        -- g - ℝ - current file git history
        -- { key="i", map="mouse_right_button" },
        -- { key="o", map="mouse_up" },
        -- { key="p", map="mouse_left_button" },
        -- { key="s", app="Simulator" },
        -- { key="d", app="Android Emulator" },
        -- { key="k", map="mouse_left" },
        -- { key="l", map="mouse_down" },
        -- { key=";", map="mouse_right" }
    }},
    { modifier={"left_control", "alt"}, chords={
        -- /------__CONTROL_LAYER___-----------------------------------------------------------------\
        -- |     |     |       |      |    |    |    |    |    |    |    |    |     |                |
        -- |-----------------------------------------------------------------------------------------+
        -- |    |   |      |      |      |     |   |     |    |    |    |    |    |                  |
        -- |-----------------------------------------------------------------------------------------+
        -- |        |    |  |  ℝ  |  ℝ  | ℝ  | Hammerspoon |    |    |    |    |    |    |
        -- |-----------------------------------------------------------------------------------------+
        -- |          |      | XCode |      |       |      |    |    |     |    |    |               |
        -- |-----------------------------------------------------------------------------------------+
        -- |  🟢🟢🟢   | 🟢🟢🟢   |       |                               |       |       |       |     |
        -- \-----------------------------------------------------------------------------------------/
        { key="tab", specific_function="translate_to_english"},
        { key="w", specific_function="window.fullscreen"},
        { key="e", specific_function="audio.external"},
        { key="i", specific_function="info.show_shortcuts"},
        -- ℝ | - GitHub Copilot - show suggestion
        { key="a", specific_function="window.left"},
        { key="s", specific_function="window.set_all_to_default" },
        { key="d", specific_function="window.right" },
        { key="f", app="LaunchPad" },
        { key="z", specific_function="translate_to_russian"},
        { key="g", specific_function="browser_git"},
        { key="h", app="Hammerspoon", window_default_position="right"},
        { key="x", app="XCode" },
        -- itsical c - Show Calendar
        { key="v", specific_function="browser_youtube" },
        { key="b", specific_function="audio.marshall"},
        { key="m", specific_function="audio.internal"},
        { key="left", specific_function="window.left"},
        { key="right", specific_function="window.right"},
        { key="up", specific_function="window.fullscreen"},
        { key="down", specific_function="window.set_all_to_default"},
    }},
    { modifier={"alt", "left_shift"}, chords={
        -- /------__CONTROL_LAYER___-----------------------------------------------------------------\
        -- |  `  |  ¡  |  ¹⁄₂  | ¹⁄₃ |  ¹⁄₄ |     |    |    |    |    |    |    |     |              |
        -- |-----------------------------------------------------------------------------------------+
        -- |      |      |       |    |      |   |    |   |    |    |    |    |    |                 |
        -- |-----------------------------------------------------------------------------------------+
        -- |        |       |      |      |      |     |    |    |    |    |    |    |               |
        -- |-----------------------------------------------------------------------------------------+
        -- |   🟢🟢🟢   |      |       |      |       |      |    |    |     |    |    |               |
        -- |-----------------------------------------------------------------------------------------+
        -- |      |  🟢🟢🟢  |       |                                 |       |       |       |        |
        -- \-----------------------------------------------------------------------------------------/
        -- ` - `
        -- 1 - ¡
        -- 2 - ¹⁄₂
        -- 3 - ¹⁄₃
        -- 4 - ¹⁄₄
        -- 5 -
        -- 6 - ˆ
        -- 7 - ¿
        -- 8 -
        -- 9 - ‹
        -- 0 - ›
        -- - - –
        -- = - ±
        -- q - ˘
        -- w - ⌃
        -- e - ⌥
        -- r - ˚
        -- t - #
        -- y - Ѣ
        -- u - Ѵ
        -- i -
        -- o - Ѳ
        -- p - ″
        -- [ - {
        -- ] - }
        -- a -
        -- s - ⇧
        -- d -
        -- f -
        -- g - 
        -- h - ˝
        -- j -
        -- k - ‘
        -- l - ’
        -- ; - ¨
        -- ' -
        -- z - ¸
        -- x -
        -- c - ¢
        -- v - ˇ
        -- b - ẞ
        -- n - ˜
        -- m - •
        -- , - „
        -- . - “
        -- / - ś
    }
    }}

function unsubscribe()
    if hideKSheetShortCut then
        hideKSheetShortCut:disable();
   end
end

function obj:init()

    hideKSheetShortCut = hs.hotkey.new({}, "escape", function()
        spoon.KSheet:hide()
        ksheet = not ksheet
        unsubscribe()
    end)

    for _, row in pairs(apps_list) do
        for _, chord_row in pairs(row.chords) do
            if chord_row.app then
                hs.hotkey.bind(row.modifier, chord_row.key, function()
                    local app = hs.application.find(chord_row.app)
                    if not app or app == nil or app:isHidden() then
                        hs.application.launchOrFocus(chord_row.app)
                    elseif hs.application.frontmostApplication() ~= app then
                        app:activate()
                    else
                        app:hide()
                    end
                end)
                if chord_row.window_default_position then
                    if chord_row.window_default_position == "right" then
                        spoon.Windows:add_right_window_type_app(chord_row.app)
                    elseif chord_row.window_default_position == "bottom" then
                        spoon.Windows:add_bottom_window_type_app(chord_row.app)
                    end
                end
            elseif chord_row.sendKey then
                hs.hotkey.bind(row.modifier, chord_row.key, function()
                    hs.eventtap.keyStrokes(chord_row.sendKey)
                end)
            elseif chord_row.specific_function then
                if chord_row.specific_function == "window.left" then
                    spoon.Windows:bind_window_left(row.modifier, chord_row.key)
                elseif chord_row.specific_function == "window.right" then
                    spoon.Windows:bind_window_right(row.modifier, chord_row.key)
                elseif chord_row.specific_function == "window.fullscreen" then
                    spoon.Windows:bind_window_fullscreen(row.modifier, chord_row.key)
                elseif chord_row.specific_function == "window.set_all_to_default" then
                    spoon.Windows:bind_all_windows_to_default(row.modifier, chord_row.key)
                elseif chord_row.specific_function == "android.show_all" then
                    hs.hotkey.bind(row.modifier, chord_row.key, function()
                        for _, window in ipairs(hs.window.allWindows()) do
                            local window_title = window:title()
                            local app_title = window:application():title()
                            for _, app in ipairs(chord_row.apps_list) do
                                if app_title == app or string.find(window_title, app) then
                                    window:focus()
                                end
                            end
                        end
                    end)
                elseif chord_row.specific_function == "info.show_shortcuts" then
                    hs.hotkey.bind(row.modifier, chord_row.key, function()
                        if ksheet then
                            spoon.KSheet:hide()
                        else
                            hideKSheetShortCut:enable();
                            spoon.KSheet:show()
                        end

                        ksheet = not ksheet
                    end)
                elseif chord_row.specific_function == "set_russian_language" then
                    hs.hotkey.bind(row.modifier, chord_row.key, function()
                        hs.keycodes.setLayout("Russian – Ilya Birman Typography")
                    end)
                elseif chord_row.specific_function == "set_english_language" then
                    hs.hotkey.bind(row.modifier, chord_row.key, function()
                        hs.keycodes.setLayout("English - Ilya Birman Typography")
                    end)
                elseif chord_row.specific_function == "translate_to_russian" then
                    spoon.PopupTranslateSelection:bindHotkeys({
                        translate_to_ru = {row.modifier, chord_row.key},
                    })
                elseif chord_row.specific_function == "translate_to_english" then
                    spoon.PopupTranslateSelection:bindHotkeys({
                        translate_to_en = {row.modifier, chord_row.key},
                    })
                elseif chord_row.specific_function == "translate_to_greek" then
                    spoon.PopupTranslateSelection:bindHotkeys({
                        translate_to_el = {row.modifier, chord_row.key},
                    })
                elseif chord_row.specific_function == "audio.internal" then
                    hs.hotkey.bind(row.modifier, chord_row.key, function()
                        spoon.AudioSwitcher:switchToInternal()
                    end)
                elseif chord_row.specific_function == "audio.external" then
                    hs.hotkey.bind(row.modifier, chord_row.key, function()
                        spoon.AudioSwitcher:switchToExternal()
                    end)
                elseif chord_row.specific_function == "audio.marshall" then
                    hs.hotkey.bind(row.modifier, chord_row.key, function()
                        spoon.AudioSwitcher:switchToMarshall()
                    end)
                elseif chord_row.specific_function == "show_youtrack" then
                    hs.hotkey.bind(row.modifier, chord_row.key, function()
                        spoon.YouTrackTicket:toggle()
                    end)
                elseif chord_row.specific_function == "show_youtrack_tasks" then
                    hs.hotkey.bind(row.modifier, chord_row.key, function()
                        spoon.YouTrackTasks:toggle()
                    end)
                elseif chord_row.specific_function == "browser_git" then
                    hs.hotkey.bind(row.modifier, chord_row.key, function()
                        spoon.BrowserTabOpener:openTab("github.com")
                    end)
                elseif chord_row.specific_function == "browser_youtube" then
                    hs.hotkey.bind(row.modifier, chord_row.key, function()
                        spoon.BrowserTabOpener:openTab("youtube.com")
                    end)
                end
            end
        end
    end
end

return obj
