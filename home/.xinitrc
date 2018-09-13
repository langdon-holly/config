[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

exec xmonad
#exec clfswm-1212/clfswm

