import XMonad
import System.Exit
import qualified XMonad.StackSet as W
import qualified Data.Map as M

main = xmonad $ def
  { modMask = mod4Mask
  , borderWidth = 1
  , focusFollowsMouse = False
  , clickJustFocuses = False --True
  , startupHook = do
      spawn "xterm"
  , keys = myKeys}

myKeys conf@(XConfig {modMask = modm}) =
  M.insert (modm, xK_s) (spawn "screenshot") $ defaultKeys conf
  where XConfig {keys = defaultKeys} = def

