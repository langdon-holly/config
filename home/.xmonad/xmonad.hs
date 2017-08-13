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
  M.union
  ( M.fromList
    [ ((modm .|. shiftMask, xK_l), (spawn "slock"))
    , ((modm, xK_s), (spawn "screenshot"))
    , ((modm, xK_d), (spawn "~/10min"))
    , ((noModMask, 0x1008FF13), (spawn "vol+"))
    , ((noModMask, 0x1008FF11), (spawn "vol-"))
    , ((noModMask, 0x1008FF12), (spawn "vol0"))])
  (defaultKeys conf)
  where XConfig {keys = defaultKeys} = def

