RED='1;38;5;196'
WHITE='97'

EZA_COLORS="reset"
PROMPT_EOL_MARK=''

# Archivos, carpetas, links, iconos y tipos de archivo: rojo
EZA_COLORS+=":fi=${RED}:di=${RED}:ex=${RED}:ln=${RED}:or=${RED}:mi=${RED}"
EZA_COLORS+=":pi=${RED}:so=${RED}:bd=${RED}:cd=${RED}:sp=${RED}:mp=${RED}"
EZA_COLORS+=":im=${RED}:vi=${RED}:mu=${RED}:lo=${RED}:cr=${RED}:do=${RED}:co=${RED}"
EZA_COLORS+=":tm=${RED}:cm=${RED}:bu=${RED}:sc=${RED}:ic=${RED}:lp=${RED}:cc=${RED}"

# Permisos: r/w/- blancos, x roja
EZA_COLORS+=":ur=${WHITE}:uw=${WHITE}:ux=${RED}:ue=${RED}"
EZA_COLORS+=":gr=${WHITE}:gw=${WHITE}:gx=${RED}"
EZA_COLORS+=":tr=${WHITE}:tw=${WHITE}:tx=${RED}"
EZA_COLORS+=":su=${RED}:sf=${RED}:xx=${WHITE}:oc=${WHITE}"

# Tamaños: blanco
EZA_COLORS+=":sn=${WHITE}:sb=${WHITE}"
EZA_COLORS+=":nb=${WHITE}:nk=${WHITE}:nm=${WHITE}:ng=${WHITE}:nt=${WHITE}"
EZA_COLORS+=":ub=${WHITE}:uk=${WHITE}:um=${WHITE}:ug=${WHITE}:ut=${WHITE}"

# Usuario, grupo, fecha, links, inode, bloques: blanco
EZA_COLORS+=":uu=${WHITE}:uR=${WHITE}:un=${WHITE}"
EZA_COLORS+=":gu=${WHITE}:gR=${WHITE}:gn=${WHITE}"
EZA_COLORS+=":lc=${WHITE}:lm=${WHITE}:da=${WHITE}:in=${WHITE}:bl=${WHITE}"
EZA_COLORS+=":df=${WHITE}:ds=${WHITE}:hd=${WHITE}:xa=${WHITE}"

# Git y extras: blanco
EZA_COLORS+=":ga=${WHITE}:gm=${WHITE}:gd=${WHITE}:gv=${WHITE}:gt=${WHITE}:gi=${WHITE}:gc=${WHITE}"
EZA_COLORS+=":Gm=${WHITE}:Go=${WHITE}:Gc=${WHITE}:Gd=${WHITE}"
EZA_COLORS+=":ff=${WHITE}:Sn=${WHITE}:Su=${WHITE}:Sr=${WHITE}:St=${WHITE}:Sl=${WHITE}"

export EZA_COLORS

export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
