{ home-manager, username, ... }:
{
    home-manager.users.${username} =  { ... }: {
    home.file = {
      ".config/waybar/config.jsonc".text = ''

{
    "position": "top",
    "layer": "top",
    "height": 40,
    "margin-top": 0,
    "margin-bottom": 0,
    "margin-left": 0,
    "margin-right": 0,
    "modules-left": ["custom/launcher", "hyprland/workspaces"],
    "modules-center": [],
    "modules-right": ["pulseaudio", "disk", "network", "clock"],
    // Modules configuration

    "clock": {
    "format": "󱑍   {:%I:%M %p  %A %d. %B %Y}",
    "tooltip": "false",
    },

    "hyprland/workspaces": {
    "active-only": false,
    "all-outputs": true,
    "disable-scroll": true,
    "format": "{icon}",
	"on-click": "activate",
	"format-icons": {
		"urgent": "",
		"active": "",
		"default": "󰧞",
    		"sort-by-number": true
    	},
    },

    "network": {
        "format-ethernet": "󰌘  {ipaddr}",
    },

  "disk": {
	"format": "  {percentage_used}% ({free})",
	"interval": 2,
  },

    "pulseaudio": {
    "format": "{icon} {volume}%",
        "format-muted": "󰝟",
	"format-icons": {
	"default": ["󰕿", "󰖀", "󰕾"]
	},
    "on-click": "bash ~/.scripts/volume mute",
    "on-scroll-up": "bash ~/.scripts/volume up",
    "on-scroll-down": "bash ~/.scripts/volume down",
    "scroll-step": 5,
    },

    "custom/launcher": {
    "format": "",
    "on-click": "wofi --show-drun",
    },
}	
    '';    

    ".config/waybar/style.css".text = ''
* {
    border: none;
    border-radius: 0px;
    /*font-family: VictorMono, Iosevka Nerd Font, Noto Sans CJK;*/
    font-family: Iosevka, FontAwesome, Noto Sans CJK;
    font-size: 17px;
    font-style: normal;
    min-height: 0;
}

window#waybar {
   background: rgba(30, 30, 46, 0);
   border-bottom: 0px solid #282828;
   color: #f4d9e1
}

#workspaces {
   background: #282828;
   margin: 5px 5px 5px 5px;
   padding: 5px 5px 5px 5px;
   border-radius: 16px;
   border: solid 0px #f4d9e1;
   font-weight: normal;
   font-style: normal;
}

#workspaces button {
    padding: 5px 5px;
    border-radius: 16px;
    color: #d7deed;
}

#workspaces button.active {
    color: #d7deed;
    background-color: transparent;
    border-radius: 16px;
}

#workspaces button:hover {
    background-color: #E6B9C6;
    color: black;
    border-radius: 16px;
}

#clock {
    color: #d7deed;
    background-color: #282828;
    border-radius: 0px 0px 0px 24px;
    padding-left: 15px;
    padding-right: 15px;
    margin-right: 0px;
    margin-left: 10px;
    margin-top: 0px;
    margin-bottom: 0px;
    font-weight: bold;
    /*border-left: solid 1px #282738;*/
}

#network {
    color: #d7deed;
    background-color: #282828;
    border-radius: 16px;
    margin: 5px 5px 5px 5px;
    padding-left: 10px;
    padding-right: 10px;
    font-weight: bold;
}

#pulseaudio {
    color: #d7deed;
    background-color: #282828;
    border-radius: 16px;
    margin: 5px 5px 5px 5px;
    padding-left: 10px;
    padding-right: 10px;
    font-weight: bold;
}

#custom-launcher {
    color: #7ebae4;
    background-color: #282828;
    border-radius: 0px 0px 24px 0px;
    margin: 0px 0px 0px 0px;
    padding-left: 5px;
    padding-right: 20px;
    /*border-right: solid 1px #282738;*/
    font-size: 28px;
}

#window {
    background: #282828;
    padding-left: 15px;
    padding-right: 15px;
    border-radius: 16px;
    /*border-left: solid 1px #282738;*/
    /*border-right: solid 1px #282738;*/
    margin-top: 5px;
    margin-bottom: 5px;
    font-weight: normal;
    font-style: normal;
}
#disk {
    background-color: #282828;
    color: #d7deed;
    border-radius: 16px;
    margin: 5px;
    margin-left: 5px;
    margin-right: 5px;
    padding: 0px 10px 0px 10px;
    font-weight: bold;
}
    '';
    };
  };
}
