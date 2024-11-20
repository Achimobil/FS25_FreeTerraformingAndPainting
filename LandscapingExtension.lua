--[[
Copyright (C) Achimobil, 2024

Author: Achimobil

Contact:
https://github.com/Achimobil/FS25_FreeTerraformingAndPainting


Important:
No copy and use in own mods allowed.

Das verändern und wiederöffentlichen, auch in Teilen, ist untersagt und wird abgemahnt.
]]

LandscapingExtension = {}
LandscapingExtension.Debug = false;

LandscapingExtension.metadata = {
	title = "LandscapingExtension",
	author = "Achimobil",
	info = "Das verändern und wiederöffentlichen, auch in Teilen, ist untersagt und wird abgemahnt."
};
LandscapingExtension.modDir = g_currentModDirectory;

function LandscapingExtension.DebugTable(text, myTable, maxDepth)
	if not LandscapingExtension.Debug then return end
	if myTable == nil then
		print("LandscapingExtensionDebug: " .. text .. " is nil");
	else
		print("LandscapingExtensionDebug: " .. text)
		DebugUtil.printTableRecursively(myTable,"_",0, maxDepth or 2);
	end
end

-- Beispiel: LandscapingExtension.DebugText("Alter: %s", age)
function LandscapingExtension.DebugText(text, ...)
	if not LandscapingExtension.Debug then return end
	print("LandscapingExtensionDebug: " .. string.format(text, ...));
end

function Landscaping.getCost(superfunc, displacedVolumeOrArea)
	LandscapingExtension.DebugText("Landscaping.getCost(%s, %s)", superfunc, displacedVolumeOrArea)
	return 0;
end

Landscaping.update = Utils.overwrittenFunction(Landscaping.update, LandscapingExtension.update)
