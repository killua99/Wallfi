all:
	rm -f wallfi
	time valac --thread --output wallfi --pkg gtk+-3.0 --vapidir src/vapi src/Gui.vala /src/Wallfi.vala
