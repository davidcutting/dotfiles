pkgs_root = global
pkgs_home = git ssh bash \
	    river foot waybar \
	    wallpaper

simulate :
	stow -v -n -t ~ $(pkgs_home)
	sudo stow -v -n -t / $(pkgs_root)

update :
	stow -v -R -t ~ $(pkgs_home)
	sudo stow -v -R -t / $(pkgs_root)

install :
	stow -v -S -t ~ $(pkgs_home)
	sudo stow -v -S -t / $(pkgs_root)

delete :
	stow -v -D -t ~ $(pkgs_home)
	sudo stow -v -D -t / $(pkgs_root)
