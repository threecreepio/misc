while true do
	camera_y = memory.readwordsigned(0x33A)
	camera_x = memory.readwordsigned(0x338)

	boat_y = memory.readwordsigned(0x684)
	boat_x = memory.readwordsigned(0x682)
	
	jaws_x = memory.readwordsigned(0x702)
	jaws_y = memory.readwordsigned(0x704)

	-- gui.text(8, 8 * 1, "Jaws: " .. jaws_x .. ",".. jaws_y)
	-- gui.text(8, 8 * 3, "Boat: " .. boat_x .. ",".. boat_y)
	-- gui.text(8, 8 * 5, "Cam:  " .. camera_x .. ",".. camera_y)
	gui.drawrect(
		jaws_x - camera_x - 8,
		jaws_y - camera_y - 8,
		jaws_x - camera_x + 8,
		jaws_y - camera_y + 8
	);
	emu.frameadvance();
end
