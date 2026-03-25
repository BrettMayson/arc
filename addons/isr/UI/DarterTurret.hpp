class RscOptics_UAV_gunner: RscUnitInfo {
    class CA_IGUI_elements_group: RscControlsGroup {
        class controls {
            class CA_Alt: RscText {
                fade = 1;
            };
            class GVAR(CA_Alt): CA_Alt {
                onLoad = QUOTE([ARR_2(""alt"",_this#0)] call FUNC(menu_addControl););
                fade = 0;
                idc = IDC_ALT;
                font = ISR_FONT;
                shadow = 0;
            };
            class CA_Speed: RscText {
                fade = 1;
            };
            class GVAR(CA_Speed): CA_Speed {
                onLoad = QUOTE([ARR_2(""speed"",_this#0)] call FUNC(menu_addControl););
                fade = 0;
                idc = IDC_SPEED;
                font = ISR_FONT;
                shadow = 0;
            };
            class TextSpd;
            class GVAR(TextSignal): TextSpd {
                fade = 0;
                font = ISR_FONT;
                shadow = 0;
                text = "SIGNAL:";
                idc = IDC_SIGNAL_TEXT;
                y = "14.8 * (0.025 * safeZoneH)";
            };
            class GVAR(CA_Signal): GVAR(CA_Alt) {
                idc = IDC_SIGNAL;
                onLoad = QUOTE([ARR_2(""signal"",_this#0)] call FUNC(menu_addControl););
                y = "14.8 * (0.025 * safeZoneH)";
                text = "ERR";
            };
            class GVAR(TextConnMode): GVAR(TextSignal) {
                idc = IDC_CONN_MODE_TEXT;
                text = "CONN:";
                y = "15.6 * (0.025 * safeZoneH)";
            };
            class GVAR(CA_ConnMode): GVAR(CA_Signal) {
                idc = IDC_CONN_MODE;
                onLoad = QUOTE([ARR_2(""connMode"",_this#0)] call FUNC(menu_addControl););
                y = "15.6 * (0.025 * safeZoneH)";
                text = "ERR";
            };
            class GVAR(TextConnFreq): GVAR(TextSignal) {
                idc = IDC_CONN_FREQ_TEXT;
                text = "FREQ:";
                y = "16.4 * (0.025 * safeZoneH)";
            };
            class GVAR(CA_ConnFreq): GVAR(CA_Signal) {
                idc = IDC_CONN_FREQ;
                onLoad = QUOTE([ARR_2(""connFreq"",_this#0)] call FUNC(menu_addControl););
                y = "16.4 * (0.025 * safeZoneH)";
                text = "ERR";
            };
            class GVAR(TextConnPower): GVAR(TextSignal) {
                idc = IDC_CONN_POWER_TEXT;
                text = "POWER:";
                y = "17.2 * (0.025 * safeZoneH)";
            };
            class GVAR(CA_ConnPower): GVAR(CA_Signal) {
                idc = IDC_CONN_POWER;
                onLoad = QUOTE([ARR_2(""connPower"",_this#0)] call FUNC(menu_addControl););
                y = "17.2 * (0.025 * safeZoneH)";
                text = "ERR";
            };

            class GVAR(MenuLine0): GVAR(CA_Alt) {
                idc = IDC_MENU_LINE_0;
                onLoad = QUOTE([ARR_2(""menuLine0"",_this#0)] call FUNC(menu_addControl););
                x = "40 * (0.01875 * SafezoneH)";
                y = "12.4 * (0.025 * safeZoneH)";
                w = "10 * (0.01875 * SafezoneH)";
                text = "";
            };
            class GVAR(MenuLine1): GVAR(CA_Alt) {
                idc = IDC_MENU_LINE_1;
                onLoad = QUOTE([ARR_2(""menuLine1"",_this#0)] call FUNC(menu_addControl););
                x = "40 * (0.01875 * SafezoneH)";
                y = "13.2 * (0.025 * safeZoneH)";
                w = "10 * (0.01875 * SafezoneH)";
                text = "";
            };
            class GVAR(MenuLine2): GVAR(CA_Alt) {
                idc = IDC_MENU_LINE_2;
                onLoad = QUOTE([ARR_2(""menuLine2"",_this#0)] call FUNC(menu_addControl););
                x = "40 * (0.01875 * SafezoneH)";
                y = "14 * (0.025 * safeZoneH)";
                w = "10 * (0.01875 * SafezoneH)";
                text = "";
            };
            class GVAR(MenuLine3): GVAR(CA_Alt) {
                idc = IDC_MENU_LINE_3;
                onLoad = QUOTE([ARR_2(""menuLine3"",_this#0)] call FUNC(menu_addControl););
                x = "40 * (0.01875 * SafezoneH)";
                y = "14.8 * (0.025 * safeZoneH)";
                w = "10 * (0.01875 * SafezoneH)";
                text = "";
            };
            class GVAR(MenuLine4): GVAR(CA_Alt) {
                idc = IDC_MENU_LINE_4;
                onLoad = QUOTE([ARR_2(""menuLine4"",_this#0)] call FUNC(menu_addControl););
                x = "40 * (0.01875 * SafezoneH)";
                y = "15.6 * (0.025 * safeZoneH)";
                w = "10 * (0.01875 * SafezoneH)";
                text = "";
            };
            class GVAR(MenuLine5): GVAR(CA_Alt) {
                idc = IDC_MENU_LINE_5;
                onLoad = QUOTE([ARR_2(""menuLine5"",_this#0)] call FUNC(menu_addControl););
                x = "40 * (0.01875 * SafezoneH)";
                y = "16.4 * (0.025 * safeZoneH)";
                w = "10 * (0.01875 * SafezoneH)";
                text = "";
            };
            class GVAR(MenuLine6): GVAR(CA_Alt) {
                idc = IDC_MENU_LINE_6;
                onLoad = QUOTE([ARR_2(""menuLine6"",_this#0)] call FUNC(menu_addControl););
                x = "40 * (0.01875 * SafezoneH)";
                y = "17.2 * (0.025 * safeZoneH)";
                w = "10 * (0.01875 * SafezoneH)";
                text = "";
            };
            class GVAR(MenuLine7): GVAR(CA_Alt) {
                idc = IDC_MENU_LINE_7;
                onLoad = QUOTE([ARR_2(""menuLine7"",_this#0)] call FUNC(menu_addControl););
                x = "40 * (0.01875 * SafezoneH)";
                y = "18 * (0.025 * safeZoneH)";
                w = "10 * (0.01875 * SafezoneH)";
                text = "";
            };
            class GVAR(MenuLine8): GVAR(CA_Alt) {
                idc = IDC_MENU_LINE_8;
                onLoad = QUOTE([ARR_2(""menuLine8"",_this#0)] call FUNC(menu_addControl););
                x = "40 * (0.01875 * SafezoneH)";
                y = "18.8 * (0.025 * safeZoneH)";
                w = "10 * (0.01875 * SafezoneH)";
                text = "";
            };
            class GVAR(MenuLine9): GVAR(CA_Alt) {
                idc = IDC_MENU_LINE_9;
                onLoad = QUOTE([ARR_2(""menuLine9"",_this#0)] call FUNC(menu_addControl););
                x = "40 * (0.01875 * SafezoneH)";
                y = "19.6 * (0.025 * safeZoneH)";
                w = "10 * (0.01875 * SafezoneH)";
                text = "";
            };
        };
    };
};
