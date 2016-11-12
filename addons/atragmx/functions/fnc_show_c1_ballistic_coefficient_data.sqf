/*
 * Author: Ruthberg
 * Shows/Hides the c1 ballistic coefficient data controls
 *
 * Arguments:
 * visible - <BOOL>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * false call ace_atragmx_fnc_show_c1_ballistic_coefficient_data
 *
 * Public: No
 */
#include "script_component.hpp"

GVAR(showC1BallisticCoefficientData) = _this;

{ctrlShow [_x, _this]} forEach [17000, 17001, 170021, 170022, 170023, 170024, 170025, 170026, 170027, 170031, 170032, 170033, 170034, 170035, 170036, 170037, 17004, 17005, 17006, 17007, 17008, 17009];

if (_this) then {
    ctrlSetFocus ((uiNamespace getVariable "ATragMX_Display") displayCtrl 170031);
    [] call FUNC(update_c1_ballistic_coefficient_data);
};