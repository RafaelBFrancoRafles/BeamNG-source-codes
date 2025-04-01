-- This Source Code Form is subject to the terms of the bCDDL, v. 1.1.
-- If a copy of the bCDDL was not distributed with this
-- file, You can obtain one at http://beamng.com/bCDDL-1.1.txt

local im  = ui_imgui
local C = {}

C.name = 'Reset Drag Race'

C.description = 'Reset the drag race but not the system.'
C.color = ui_flowgraph_editor.nodeColors.vehicle
C.icon = ui_flowgraph_editor.nodeIcons.vehicle
C.category = 'once_instant'

C.pinSchema = {
  { dir = 'out', type = 'flow', name = 'flow', description = 'Impulse out flow when drag race is reseted', impulse = true },
}

C.tags = {'gameplay', 'utils'}

function C:workOnce()
  gameplay_drag_general.resetDragRace()
end

return _flowgraph_createNode(C)