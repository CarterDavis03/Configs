set EDITOR '/usr/bin/nvim'
set VISUAL '/usr/bin/nvim'
set SUDO_EDITOR '/usr/bin/nvim'
set TERM 'st'
set PATH /home/carter/.emacs.d/bin/ $PATH
set PATH /home/carter/.bin/ $PATH
set PATH /opt/gbdk/bin/ $PATH
set PATH /home/carter/.dotnet/tools $PATH
set PATH /usr/share/dotnet/sdk-manifests $PATH
set PATH /opt/cuda/bin $PATH

if status --is-login
   if test (tty) = /dev/tty1
      exec startx -- -keeptty
    end
end

function fish_greeting
  pfetch
#  cal -3
end

function sudo
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end


fish_vi_key_bindings

# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

source $HOME/.config/fish/conf.d/fishalias
