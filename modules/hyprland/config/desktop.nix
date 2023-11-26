{ home-manager, username, ... }:
{
home-manager.users.${username} =  { ... }: {
  home.file = {

".config/hypr/hyprland.conf".text = ''

# monitor
monitor = DP-1,3840x1600@160,0x0,1

# autostart
exec-once = swww init && swww img ~/.config/backgrounds/nix-wallpaper-dracula.jpg 
exec-once = waybar
exec-once = mako
exec-once = lxqt-policykit-agent
exec-once = dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP

# some default env vars.
env = XCURSOR_SIZE,24
env = XDG_CURRENT_DESKTOP,Hyprland
env = XDG_SESSION_DESKTOP,Hyprland
env = XDG_SESSION_TYPE,wayland
env = GDK_BACKEND,wayland,x11
env = QT_QPA_PLATFORM,wayland

# general
input {
	kb_layout = gb
}

general {
	gaps_in			= 5
	gaps_out		= 10
	border_size		= 2
	col.active_border	= rgba(0D599Fee) rgba(ffffffee) 45deg
	col.inactive_border	= rgba(595959aa)
	layout			= dwindle
	no_cursor_warps		= yes
	resize_on_border	= yes
	hover_icon_on_border	= yes
}

decoration {
	rounding		= 10
	drop_shadow		= yes
	shadow_range		= 4
	shadow_render_power	= 3
	col.shadow		= rgba(1a1a1aee)
	active_opacity		= 0.84
	inactive_opacity	= 0.84
	fullscreen_opacity	= 0.84
	blur {
		enabled		  = yes
		size		  = 8
		passes		  = 3
		new_optimizations = true
		xray		  = true
		}
}

animations {
	enabled = yes
	bezier = snappybezier, 0.4, 0.0, 0.2, 1.0
	bezier = smoothbezier, 0.25, 0.1, 0.25, 1.0
	animation = windows, 1, 7, snappybezier
	animation = windowsOut, 1, 7, snappybezier, popin 85%
	animation = border, 1, 10, snappybezier
	animation = borderangle, 1, 8, smoothbezier
	animation = fade, 1, 7, smoothbezier
	animation = workspaces, 1, 6, smoothbezier
}

dwindle {
	pseudotile = yes
	preserve_split = yes
}

master {
	new_is_master = true
}

gestures {
	workspace_swipe = off
}

device:epic-mouse-v1 {
	sensitivity = -0.5
}

misc {
	disable_hyprland_logo	 = true
  	disable_splash_rendering = true
	mouse_move_enables_dpms	 = true
}

#keybinds
$mainMod = SUPER

# Example binds, see https://wiki.hyprland.org/Configuring/Binds/ for more
bind = $mainMod SHIFT, 	Q, 		killactive, 
bind = $mainMod SHIFT, 	E, 		exit,
bind = $mainMod SHIFT, 	F, 		togglefloating, 
bind = $mainMod SHIFT, 	P, 		pseudo, 	# dwindle
bind = $mainMod SHIFT, 	J, 		togglesplit, 	# dwindle
bind = $mainMod SHIFT,	Print,	exec,	grim -g "$(slurp)"
bind = $mainMod,	Print,	exec,	grim
bind = $mainMod,	Return,	exec,	alacritty
bind = $mainMod,	Z,	exec,	rofi -show "drun"

# Move focus with mainMod + arrow keys
bind = $mainMod, left, 	movefocus, l
bind = $mainMod, right, movefocus, r
bind = $mainMod, up, 	movefocus, u
bind = $mainMod, down, 	movefocus, d

# Switch workspaces with mainMod + [0-9]
bind = $mainMod, 1, workspace, 1
bind = $mainMod, 2, workspace, 2
bind = $mainMod, 3, workspace, 3
bind = $mainMod, 4, workspace, 4
bind = $mainMod, 5, workspace, 5
bind = $mainMod, 6, workspace, 6
bind = $mainMod, 7, workspace, 7
bind = $mainMod, 8, workspace, 8
bind = $mainMod, 9, workspace, 9
bind = $mainMod, 0, workspace, 10

# Move active window to a workspace with mainMod + SHIFT + [0-9]
bind = $mainMod SHIFT, 1, movetoworkspacesilent, 1
bind = $mainMod SHIFT, 2, movetoworkspacesilent, 2
bind = $mainMod SHIFT, 3, movetoworkspacesilent, 3
bind = $mainMod SHIFT, 4, movetoworkspacesilent, 4
bind = $mainMod SHIFT, 5, movetoworkspacesilent, 5
bind = $mainMod SHIFT, 6, movetoworkspacesilent, 6
bind = $mainMod SHIFT, 7, movetoworkspacesilent, 7
bind = $mainMod SHIFT, 8, movetoworkspacesilent, 8
bind = $mainMod SHIFT, 9, movetoworkspacesilent, 9
bind = $mainMod SHIFT, 0, movetoworkspacesilent, 10

# Scroll through existing workspaces with mainMod + scroll
bind = $mainMod, mouse_up, 	workspace, e+1
bind = $mainMod, mouse_down, 	workspace, e-1

# Move/resize windows with mainMod + LMB/RMB and dragging
bindm = $mainMod, mouse:272, movewindow
bindm = $mainMod, mouse:273, resizewindow
      '';

    };
  };
}
