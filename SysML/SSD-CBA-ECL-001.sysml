// SysML v2 テキスト：回路遮断器の割り当て定義書（ECLSS のパネル・バス・名称・機能の文）
// SSD-CBA-ECL-001 回路遮断器の割り当て定義書（ECLSS のパネル・バス・名称・機能の文） の表から生成（lib/build_docs_dk.py・rev_dk/cbadata.py）。根拠の頁は SSD-CBA-ECL-001 にある。
package SSD_CBA_ECL_001 {
    doc /* SSD-CBA-ECL-001 回路遮断器の割り当て定義書（ECLSS のパネル・バス・名称・機能の文）。ECLSS 訓練マニュアルの回路遮断器の表を、バス・パネル・遮断器の行（BreakerRow）・バス→遮断器の接続（BusFeed）として持つ。境界の行は isCounted = false の行だけで、接続は持たない。バスは本パッケージの中だけのもので、SSD-IBD-ORB-001 の機器・バスには結ばない。要求への関係は張らず、トレースの外に置く。 */
    private import ScalarValues::*;
    part def PowerBus {
        doc /* 回路遮断器が電力を受けるバス（本パッケージの中だけのもの。SSD-IBD-ORB-001 のバスには結ばない） */
        attribute busName : String;
    }
    part def BreakerPanel {
        doc /* 回路遮断器のあるパネル（資料の欄のとおりの名前） */
        attribute panelName : String;
    }
    part def BreakerRow {
        doc /* 資料の表の1行（パネル・バス・名称・機能の文・個数）。値は本文のまま。名称は系統の名称と遮断器の名前を区切りなく連ねたもの。負荷は機能の文の『power to』の後ろ（既存の機器には結ばない） */
        attribute panel : String;
        attribute bus : String;
        attribute designation : String;
        attribute functionText : String;
        attribute loadText : String;
        attribute breakerCount : Integer [0..1];
        attribute sourcePage : Integer;
        attribute isCounted : Boolean;
    }
    connection def BusFeed {
        doc /* バスから遮断器の行への電力の供給（資料の欄のバスの記載による） */
        end bus : PowerBus;
        end breaker : BreakerRow;
    }
    part cbaBuses {
        part bus_mna : PowerBus { :>> busName = "MNA"; }
        part bus_mnb : PowerBus { :>> busName = "MNB"; }
        part bus_mnc : PowerBus { :>> busName = "MNC"; }
        part bus_ac1 : PowerBus { :>> busName = "AC1"; }
        part bus_ac2 : PowerBus { :>> busName = "AC2"; }
        part bus_ac3 : PowerBus { :>> busName = "AC3"; }
    }
    part cbaPanels {
        part panel_l4 : BreakerPanel {
            :>> panelName = "L4";
            part <'CBA-013'> cba_013 : BreakerRow { doc /* L4・AC1 行 5528 */ :>> panel = "L4"; :>> bus = "AC1"; :>> designation = "φA-φB-φC H2O LOOP PUMP 1ª/2"; :>> functionText = "Provides 3-phase AC1 power to LOOP 1 PUMP A H2O PUMP switch on Panel L1.  Also provides 3-phase AC1 power to H2O PUMP LOOP 2 GPC position on Panel L1"; :>> loadText = "LOOP 1 PUMP A H2O PUMP switch"; :>> breakerCount = 3; :>> sourcePage = 91; :>> isCounted = true; }
            part <'CBA-014'> cba_014 : BreakerRow { doc /* L4・AC2 行 5542 */ :>> panel = "L4"; :>> bus = "AC2"; :>> designation = "φA-φB-φC H2O LOOP PUMP 1B"; :>> functionText = "3-phase AC2 power to LOOP 1 PUMP B switch on Panel L1"; :>> loadText = "LOOP 1 PUMP B switch"; :>> breakerCount = 3; :>> sourcePage = 91; :>> isCounted = true; }
            part <'CBA-015'> cba_015 : BreakerRow { doc /* L4・AC3 行 5551 */ :>> panel = "L4"; :>> bus = "AC3"; :>> designation = "φA-φB-φC H2O LOOP PUMP 2"; :>> functionText = "3-phase AC3 power to LOOP 2 H2O PUMP switch on Panel L1"; :>> loadText = "LOOP 2 H2O PUMP switch"; :>> breakerCount = 3; :>> sourcePage = 91; :>> isCounted = true; }
            part <'CBA-016'> cba_016 : BreakerRow { doc /* L4・AC1 行 5560 */ :>> panel = "L4"; :>> bus = "AC1"; :>> designation = "AV BAY 1 FAN A"; :>> functionText = "3-phase AC1 power to AVIONICS BAY 1 FAN A switch on Panel L1"; :>> loadText = "AVIONICS BAY 1 FAN A switch"; :>> breakerCount = 3; :>> sourcePage = 91; :>> isCounted = true; }
            part <'CBA-017'> cba_017 : BreakerRow { doc /* L4・AC2 行 5569 */ :>> panel = "L4"; :>> bus = "AC2"; :>> designation = "AV BAY 1 FAN B"; :>> functionText = "3-phase AC2 power to AVIONICS BAY 1 FAN B switch on Panel L1"; :>> loadText = "AVIONICS BAY 1 FAN B switch"; :>> breakerCount = 3; :>> sourcePage = 91; :>> isCounted = true; }
            part <'CBA-018'> cba_018 : BreakerRow { doc /* L4・AC3 行 5578 */ :>> panel = "L4"; :>> bus = "AC3"; :>> designation = "AV BAY 3 FAN A"; :>> functionText = "3-phase AC3 power to AVIONICS BAY 3 FAN A switch on Panel L1"; :>> loadText = "AVIONICS BAY 3 FAN A switch"; :>> breakerCount = 3; :>> sourcePage = 91; :>> isCounted = true; }
            part <'CBA-019'> cba_019 : BreakerRow { doc /* L4・AC1 行 5587 */ :>> panel = "L4"; :>> bus = "AC1"; :>> designation = "AV BAY 3"; :>> functionText = "3-phase AC1 power to AVIONICS BAY 3 FAN B switch on Panel L1"; :>> loadText = "AVIONICS BAY 3 FAN B switch"; :>> breakerCount = 3; :>> sourcePage = 91; :>> isCounted = true; }
            part <'CBA-020'> cba_020 : BreakerRow { doc /* L4・AC2 行 5595 */ :>> panel = "L4"; :>> bus = "AC2"; :>> designation = "AV BAY 2 FAN A"; :>> functionText = "3-phase AC2 power to AVIONICS BAY 2 FAN A switch on Panel L1"; :>> loadText = "AVIONICS BAY 2 FAN A switch"; :>> breakerCount = 3; :>> sourcePage = 91; :>> isCounted = true; }
            part <'CBA-021'> cba_021 : BreakerRow { doc /* L4・AC3 行 5604 */ :>> panel = "L4"; :>> bus = "AC3"; :>> designation = "AV BAY 2 FAN B"; :>> functionText = "3-phase AC3 power to AVIONICS BAY 2 FAN B switch on Panel L1"; :>> loadText = "AVIONICS BAY 2 FAN B switch"; :>> breakerCount = 3; :>> sourcePage = 91; :>> isCounted = true; }
            part <'CBA-022'> cba_022 : BreakerRow { doc /* L4・AC1 行 5613 */ :>> panel = "L4"; :>> bus = "AC1"; :>> designation = "IMU FAN A"; :>> functionText = "3-phase AC1 power to IMU FAN A switch on Panel L1"; :>> loadText = "IMU FAN A switch"; :>> breakerCount = 3; :>> sourcePage = 91; :>> isCounted = true; }
            part <'CBA-023'> cba_023 : BreakerRow { doc /* L4・AC2 行 5621 */ :>> panel = "L4"; :>> bus = "AC2"; :>> designation = "IMU FAN B"; :>> functionText = "3-phase AC2 power to IMU FAN B switch on Panel L1"; :>> loadText = "IMU FAN B switch"; :>> breakerCount = 3; :>> sourcePage = 91; :>> isCounted = true; }
            part <'CBA-024'> cba_024 : BreakerRow { doc /* L4・AC3 行 5629 */ :>> panel = "L4"; :>> bus = "AC3"; :>> designation = "IMU FAN C"; :>> functionText = "3-phase AC3 power to IMU FAN C switch on Panel L1"; :>> loadText = "IMU FAN C switch"; :>> breakerCount = 3; :>> sourcePage = 91; :>> isCounted = true; }
            part <'CBA-025'> cba_025 : BreakerRow { doc /* L4・AC1 行 5650 */ :>> panel = "L4"; :>> bus = "AC1"; :>> designation = "HUMIDITY SEPARATOR A"; :>> functionText = "3-phase AC1 power to HUMIDITY SEPARATOR A switch on Panel L1"; :>> loadText = "HUMIDITY SEPARATOR A switch"; :>> breakerCount = 3; :>> sourcePage = 92; :>> isCounted = true; }
            part <'CBA-026'> cba_026 : BreakerRow { doc /* L4・AC2 行 5660 */ :>> panel = "L4"; :>> bus = "AC2"; :>> designation = "HUMIDITY SEPARATOR A"; :>> functionText = "3-phase AC2 power to HUMIDITY SEPARATOR B switch on Panel L1"; :>> loadText = "HUMIDITY SEPARATOR B switch"; :>> breakerCount = 3; :>> sourcePage = 92; :>> isCounted = true; }
            part <'CBA-027'> cba_027 : BreakerRow { doc /* L4・AC3 行 5670 */ :>> panel = "L4"; :>> bus = "AC3"; :>> designation = "SIG CONDR HUM SEP"; :>> functionText = "AC3 φA power to humidity separator signal conditioners"; :>> loadText = "humidity separator signal conditioners"; :>> breakerCount = 1; :>> sourcePage = 92; :>> isCounted = true; }
            part <'CBA-028'> cba_028 : BreakerRow { doc /* L4・AC3 行 5678 */ :>> panel = "L4"; :>> bus = "AC3"; :>> designation = "SIG CONDR IMU FAN"; :>> functionText = "AC3 φB power to IMU FAN signal conditioner"; :>> loadText = "IMU FAN signal conditioner"; :>> breakerCount = 1; :>> sourcePage = 92; :>> isCounted = true; }
            part <'CBA-029'> cba_029 : BreakerRow { doc /* L4・AC1 行 5685 */ :>> panel = "L4"; :>> bus = "AC1"; :>> designation = "H2O CNTLR 2"; :>> functionText = "AC1 φA power to H2O controller 2"; :>> loadText = "H2O controller 2"; :>> breakerCount = 1; :>> sourcePage = 92; :>> isCounted = true; }
            part <'CBA-030'> cba_030 : BreakerRow { doc /* L4・AC1 行 5692 */ :>> panel = "L4"; :>> bus = "AC1"; :>> designation = "CABIN AIR S/C"; :>> functionText = "AC1 φB power to cabin air signal conditioner"; :>> loadText = "cabin air signal conditioner"; :>> breakerCount = 1; :>> sourcePage = 92; :>> isCounted = true; }
            part <'CBA-031'> cba_031 : BreakerRow { doc /* L4・AC2 行 5699 */ :>> panel = "L4"; :>> bus = "AC2"; :>> designation = "CABIN FAN B"; :>> functionText = "AC2 3-phase power to the CABIN FAN B switch on Panel L1"; :>> loadText = "the CABIN FAN B switch"; :>> breakerCount = 3; :>> sourcePage = 92; :>> isCounted = true; }
            part <'CBA-032'> cba_032 : BreakerRow { doc /* L4・AC3 行 5707 */ :>> panel = "L4"; :>> bus = "AC3"; :>> designation = "CABIN FAN A"; :>> functionText = "AC3 3-phase power to CABIN FAN A switch on Panel L1"; :>> loadText = "CABIN FAN A switch"; :>> breakerCount = 3; :>> sourcePage = 92; :>> isCounted = true; }
            part <'CBA-033'> cba_033 : BreakerRow { doc /* L4・AC1 行 5715 */ :>> panel = "L4"; :>> bus = "AC1"; :>> designation = "CABIN CNTLR 2"; :>> functionText = "AC1 φA power to cabin temperature controller 2 switch on Panel L1"; :>> loadText = "cabin temperature controller 2 switch"; :>> breakerCount = 1; :>> sourcePage = 92; :>> isCounted = true; }
            part <'CBA-034'> cba_034 : BreakerRow { doc /* L4・AC1 行 5723 */ :>> panel = "L4"; :>> bus = "AC1"; :>> designation = "AV BAY 2 S/C"; :>> functionText = "AC1 φB power to the avionics bay 2 signal conditioner"; :>> loadText = "the avionics bay 2 signal conditioner"; :>> breakerCount = 1; :>> sourcePage = 92; :>> isCounted = true; }
            part <'CBA-035'> cba_035 : BreakerRow { doc /* L4・AC2 行 5731 */ :>> panel = "L4"; :>> bus = "AC2"; :>> designation = "CABIN T CNTLR 1"; :>> functionText = "AC2 φA power to cabin temperature controller 1 switch on Panel L1"; :>> loadText = "cabin temperature controller 1 switch"; :>> breakerCount = 1; :>> sourcePage = 92; :>> isCounted = true; }
            part <'CBA-036'> cba_036 : BreakerRow { doc /* L4・AC2 行 5739 */ :>> panel = "L4"; :>> bus = "AC2"; :>> designation = "AV BAY 3 S/C"; :>> functionText = "AC2 φB power to the avionics bay 3 signal conditioner"; :>> loadText = "the avionics bay 3 signal conditioner"; :>> breakerCount = 1; :>> sourcePage = 92; :>> isCounted = true; }
            part <'CBA-037'> cba_037 : BreakerRow { doc /* L4・AC3 行 5747 */ :>> panel = "L4"; :>> bus = "AC3"; :>> designation = "H2O CNTLR"; :>> functionText = "AC3 φA power to H2O controller 1"; :>> loadText = "H2O controller 1"; :>> breakerCount = 1; :>> sourcePage = 92; :>> isCounted = true; }
            part <'CBA-038'> cba_038 : BreakerRow { doc /* L4・AC3 行 5767 */ :>> panel = "L4"; :>> bus = "AC3"; :>> designation = "AV BAY 1 S/C"; :>> functionText = "AC3 φB power to the avionics bay 1 signal conditioner"; :>> loadText = "the avionics bay 1 signal conditioner"; :>> breakerCount = 1; :>> sourcePage = 93; :>> isCounted = true; }
        }
        part panel_ml86b : BreakerPanel {
            :>> panelName = "ML86B";
            part <'CBA-043'> cba_043 : BreakerRow { doc /* ML86B・MNA 行 9287 */ :>> panel = "ML86B"; :>> bus = "MNA"; :>> designation = "SUPPLY H2O TK A INLET"; :>> functionText = "Main A power to tank A inlet switch on Panel R11"; :>> loadText = "tank A inlet switch"; :>> breakerCount = 1; :>> sourcePage = 167; :>> isCounted = true; }
            part <'CBA-044'> cba_044 : BreakerRow { doc /* ML86B・MNA 行 9293 */ :>> panel = "ML86B"; :>> bus = "MNA"; :>> designation = "SUPPLY H2O TK B OUTLET"; :>> functionText = "Main A power to tank B outlet switch on Panel R11"; :>> loadText = "tank B outlet switch"; :>> breakerCount = 1; :>> sourcePage = 167; :>> isCounted = true; }
            part <'CBA-045'> cba_045 : BreakerRow { doc /* ML86B・MNB 行 9303 */ :>> panel = "ML86B"; :>> bus = "MNB"; :>> designation = "SUPPLY H2O TK B INLET"; :>> functionText = "Main B power to H2O tank B inlet switch on Panel R11"; :>> loadText = "H2O tank B inlet switch"; :>> breakerCount = 1; :>> sourcePage = 167; :>> isCounted = true; }
            part <'CBA-046'> cba_046 : BreakerRow { doc /* ML86B・MNB 行 9309 */ :>> panel = "ML86B"; :>> bus = "MNB"; :>> designation = "SUPPLY H2O TK B OUTLET"; :>> functionText = "Main B power to H2O tank C outlet switch on Panel R11"; :>> loadText = "H2O tank C outlet switch"; :>> breakerCount = 1; :>> sourcePage = 167; :>> isCounted = true; }
            part <'CBA-047'> cba_047 : BreakerRow { doc /* ML86B・MNB 行 9315 */ :>> panel = "ML86B"; :>> bus = "MNB"; :>> designation = "SUPPLY H2O DUMP ISOL"; :>> functionText = "Main B power to the dump ISOL switch on Panel R11"; :>> loadText = "the dump ISOL switch"; :>> breakerCount = 1; :>> sourcePage = 167; :>> isCounted = true; }
            part <'CBA-048'> cba_048 : BreakerRow { doc /* ML86B・MNB 行 9321 */ :>> panel = "ML86B"; :>> bus = "MNB"; :>> designation = "SUPPLY H2O B SPLY ISOL VLV"; :>> functionText = "Main B power to the B SPLY isolation switch on Panel R11"; :>> loadText = "the B SPLY isolation switch"; :>> breakerCount = 1; :>> sourcePage = 167; :>> isCounted = true; }
            part <'CBA-049'> cba_049 : BreakerRow { doc /* ML86B・MNC 行 9331 */ :>> panel = "ML86B"; :>> bus = "MNC"; :>> designation = "SUPPLY H2O TK A OUTLET"; :>> functionText = "Main C power to H2O TK A OUTLET switch on Panel R11"; :>> loadText = "H2O TK A OUTLET switch"; :>> breakerCount = 1; :>> sourcePage = 167; :>> isCounted = true; }
            part <'CBA-050'> cba_050 : BreakerRow { doc /* ML86B・MNC 行 9350 */ :>> panel = "ML86B"; :>> bus = "MNC"; :>> designation = "SUPPLY H2O TK C INLET"; :>> functionText = "Main C power to H2O TK C INLET switch on Panel R11"; :>> loadText = "H2O TK C INLET switch"; :>> breakerCount = 1; :>> sourcePage = 168; :>> isCounted = true; }
            part <'CBA-051'> cba_051 : BreakerRow { doc /* ML86B・MNC 行 9356 */ :>> panel = "ML86B"; :>> bus = "MNC"; :>> designation = "SUPPLY H2O DUMP VLV/NOZ HTR"; :>> functionText = "Main C power to dump valve nozzle heater switch on Panel R11"; :>> loadText = "dump valve nozzle heater switch"; :>> breakerCount = 1; :>> sourcePage = 168; :>> isCounted = true; }
            part <'CBA-052'> cba_052 : BreakerRow { doc /* ML86B・MNC 行 9362 */ :>> panel = "ML86B"; :>> bus = "MNC"; :>> designation = "SUPPLY H2O XOUR VLV"; :>> functionText = "Main C power to crossover valve switch on Panel R11"; :>> loadText = "crossover valve switch"; :>> breakerCount = 1; :>> sourcePage = 168; :>> isCounted = true; }
            part <'CBA-053'> cba_053 : BreakerRow { doc /* ML86B・MNC 行 9368 */ :>> panel = "ML86B"; :>> bus = "MNC"; :>> designation = "SUPPLY H2O GALLEY SUPPLY"; :>> functionText = "Main power to galley supply switch on Panel R11"; :>> loadText = "galley supply switch"; :>> breakerCount = 1; :>> sourcePage = 168; :>> isCounted = true; }
            part <'CBA-054'> cba_054 : BreakerRow { doc /* ML86B・MNA 行 9374 */ :>> panel = "ML86B"; :>> bus = "MNA"; :>> designation = "WASTE H2O TK 1 VLV"; :>> functionText = "Main A power to tank 1 valve on Panel ML31C"; :>> loadText = "tank 1 valve"; :>> breakerCount = 1; :>> sourcePage = 168; :>> isCounted = true; }
            part <'CBA-055'> cba_055 : BreakerRow { doc /* ML86B・MNA 行 9379 */ :>> panel = "ML86B"; :>> bus = "MNA"; :>> designation = "SUPPLY H2O TK D OUTLET"; :>> functionText = "Main A power to tank D outlet switch on Panel ML31C"; :>> loadText = "tank D outlet switch"; :>> breakerCount = 1; :>> sourcePage = 168; :>> isCounted = true; }
            part <'CBA-056'> cba_056 : BreakerRow { doc /* ML86B・MNA 行 9385 */ :>> panel = "ML86B"; :>> bus = "MNA"; :>> designation = "WASTE H2O DUMP ISOL A"; :>> functionText = "Main A power to dump isolation switch on Panel ML31C"; :>> loadText = "dump isolation switch"; :>> breakerCount = 1; :>> sourcePage = 168; :>> isCounted = true; }
            part <'CBA-057'> cba_057 : BreakerRow { doc /* ML86B・MNA 行 9391 */ :>> panel = "ML86B"; :>> bus = "MNA"; :>> designation = "VAC VENT ISOL VLV"; :>> functionText = "Main A power to vacuum vent isolation valve on Panel ML31C"; :>> loadText = "vacuum vent isolation valve"; :>> breakerCount = 1; :>> sourcePage = 168; :>> isCounted = true; }
            part <'CBA-058'> cba_058 : BreakerRow { doc /* ML86B・MNA 行 9397 */ :>> panel = "ML86B"; :>> bus = "MNA"; :>> designation = "WCS CNTLR"; :>> functionText = "Main A power to WCS controller ML31C"; :>> loadText = "WCS controller ML31C"; :>> breakerCount = 1; :>> sourcePage = 168; :>> isCounted = true; }
            part <'CBA-059'> cba_059 : BreakerRow { doc /* ML86B・MNB 行 9404 */ :>> panel = "ML86B"; :>> bus = "MNB"; :>> designation = "WASTE H2O TK 1 DRAIN"; :>> functionText = "Main B power to tank 1 drain switch on Panel ML31C"; :>> loadText = "tank 1 drain switch"; :>> breakerCount = 1; :>> sourcePage = 168; :>> isCounted = true; }
            part <'CBA-060'> cba_060 : BreakerRow { doc /* ML86B・MNB 行 9410 */ :>> panel = "ML86B"; :>> bus = "MNB"; :>> designation = "SUPPLY H2O TK D INLET"; :>> functionText = "Main B power to tank D inlet switch on Panel ML31C"; :>> loadText = "tank D inlet switch"; :>> breakerCount = 1; :>> sourcePage = 168; :>> isCounted = true; }
            part <'CBA-061'> cba_061 : BreakerRow { doc /* ML86B・MNB 行 9416 */ :>> panel = "ML86B"; :>> bus = "MNB"; :>> designation = "VAC VENT NOZ HTR"; :>> functionText = "Main B power to vacuum vent nozzle heater switch on Panel ML31C"; :>> loadText = "vacuum vent nozzle heater switch"; :>> breakerCount = 1; :>> sourcePage = 168; :>> isCounted = true; }
            part <'CBA-062'> cba_062 : BreakerRow { doc /* ML86B・MNB 行 9435 */ :>> panel = "ML86B"; :>> bus = "MNB"; :>> designation = "VAC VENT ISOL VLV"; :>> functionText = "Main B power to vacuum vent isolation valve switch on Panel ML31C"; :>> loadText = "vacuum vent isolation valve switch"; :>> breakerCount = 1; :>> sourcePage = 169; :>> isCounted = true; }
            part <'CBA-063'> cba_063 : BreakerRow { doc /* ML86B・MNB 行 9441 */ :>> panel = "ML86B"; :>> bus = "MNB"; :>> designation = "WCS CNTLR"; :>> functionText = "Main B power to WCS controller on Panel ML31C"; :>> loadText = "WCS controller"; :>> breakerCount = 1; :>> sourcePage = 169; :>> isCounted = true; }
            part <'CBA-064'> cba_064 : BreakerRow { doc /* ML86B・MNB 行 9446 */ :>> panel = "ML86B"; :>> bus = "MNB"; :>> designation = "GALLEY H2O HTR"; :>> functionText = "Main B power to galley H2O heater"; :>> loadText = "galley H2O heater"; :>> breakerCount = 1; :>> sourcePage = 169; :>> isCounted = true; }
        }
        part panel_o14 : BreakerPanel {
            :>> panelName = "O14";
            part <'CBA-001'> cba_001 : BreakerRow { doc /* O14・MNA 行 2918 */ :>> panel = "O14"; :>> bus = "MNA"; :>> designation = "ATM PRESS CONTROL N2 SUPPLY 1"; :>> functionText = "Provides Main A power to the N2 SYS 1 SUPPLY switch on Panel L2"; :>> loadText = "the N2 SYS 1 SUPPLY switch"; :>> breakerCount = 1; :>> sourcePage = 52; :>> isCounted = true; }
            part <'CBA-002'> cba_002 : BreakerRow { doc /* O14・MNA 行 2929 */ :>> panel = "O14"; :>> bus = "MNA"; :>> designation = "ATM PRESS CONTROL O2/N2 CNTLR 1"; :>> functionText = "Provides Main A power to the SYS 1 O2/N2 CNTLR VLV switch on Panel L2"; :>> loadText = "the SYS 1 O2/N2 CNTLR VLV switch"; :>> breakerCount = 1; :>> sourcePage = 52; :>> isCounted = true; }
            part <'CBA-003'> cba_003 : BreakerRow { doc /* O14・MNA 行 2940 */ :>> panel = "O14"; :>> bus = "MNA"; :>> designation = "ATM PRESS CONTROL O2 XOVR 1"; :>> functionText = "Provides Main A power to the SYS 1 O2 XOVR switch on Panel L2"; :>> loadText = "the SYS 1 O2 XOVR switch"; :>> breakerCount = 1; :>> sourcePage = 52; :>> isCounted = true; }
            part <'CBA-004'> cba_004 : BreakerRow { doc /* O14・MNA 行 2950 */ :>> panel = "O14"; :>> bus = "MNA"; :>> designation = "ATM PRESS CONTROL N2 REG INLET"; :>> functionText = "Provides Main A power to the SYS 1 N2 REG INLET switch on Panel L2"; :>> loadText = "the SYS 1 N2 REG INLET switch"; :>> breakerCount = 1; :>> sourcePage = 52; :>> isCounted = true; }
            part <'CBA-005'> cba_005 : BreakerRow { doc /* O14・MNA 行 2961 */ :>> panel = "O14"; :>> bus = "MNA"; :>> designation = "ATM PRESS CONTROL CABIN VENT"; :>> functionText = "Provides Main A power to the CABIN VENT switch on Panel L2"; :>> loadText = "the CABIN VENT switch"; :>> breakerCount = 1; :>> sourcePage = 52; :>> isCounted = true; }
            part <'CBA-006'> cba_006 : BreakerRow { doc /* O14・MNA 行 2972 */ :>> panel = "O14"; :>> bus = "MNA"; :>> designation = "ATM PRESS CONTROL CABIN VENT ISOL"; :>> functionText = "Provides Main A power to the CABIN VENT ISOL SWITCH, Panel L2"; :>> loadText = "the CABIN VENT ISOL SWITCH"; :>> breakerCount = 1; :>> sourcePage = 52; :>> isCounted = true; }
            part <'CBA-039'> cba_039 : BreakerRow { doc /* O14・MNA 行 5791 */ :>> panel = "O14"; :>> bus = "MNA"; :>> designation = "H2O BYP LOOP 1 SNSR"; :>> functionText = "Provides power for the H2O loop 1 inter-changer flow rate sensor and the IMU fan ∆P sensor"; :>> loadText = ""; :>> breakerCount = 1; :>> sourcePage = 93; :>> isCounted = true; }
            part <'CBA-041'> cba_041 : BreakerRow { doc /* O14・MNA 行 8221 */ :>> panel = "O14"; :>> bus = "MNA"; :>> designation = "FREON RAD CNTLR 1 – 2"; :>> functionText = "Provides main A power to the radiator controllers"; :>> loadText = "the radiator controllers"; :>> breakerCount = 2; :>> sourcePage = 141; :>> isCounted = true; }
        }
        part panel_o15 : BreakerPanel {
            :>> panelName = "O15";
            part <'CBA-007'> cba_007 : BreakerRow { doc /* O15・MNB 行 2983 */ :>> panel = "O15"; :>> bus = "MNB"; :>> designation = "ATM PRESS CONTROL PPO2 C CAB dP/dT"; :>> functionText = "Provides Main B power to the dP/dT sensor and PPO2 C sensor power supply"; :>> loadText = "the dP/dT sensor and PPO2 C sensor power supply"; :>> breakerCount = 1; :>> sourcePage = 52; :>> isCounted = true; }
            part <'CBA-008'> cba_008 : BreakerRow { doc /* O15・MNB 行 3040 */ :>> panel = "O15"; :>> bus = "MNB"; :>> designation = "ATM PRESS CONTROL N2 SUPPLY 2"; :>> functionText = "Provides Main B power to the SYS 2 N2 SUPPLY switch on Panel L2"; :>> loadText = "the SYS 2 N2 SUPPLY switch"; :>> breakerCount = 1; :>> sourcePage = 53; :>> isCounted = true; }
            part <'CBA-009'> cba_009 : BreakerRow { doc /* O15・MNB 行 3051 */ :>> panel = "O15"; :>> bus = "MNB"; :>> designation = "ATM PRESS CONTROL O2/N2 CNTLR 2"; :>> functionText = "Provides Main B power to the SYS 2 O2/N2 CNTLR VLV switch on Panel L2"; :>> loadText = "the SYS 2 O2/N2 CNTLR VLV switch"; :>> breakerCount = 1; :>> sourcePage = 53; :>> isCounted = true; }
            part <'CBA-010'> cba_010 : BreakerRow { doc /* O15・MNB 行 3062 */ :>> panel = "O15"; :>> bus = "MNB"; :>> designation = "ATM PRESS CONTROL N2 REG INLET 2"; :>> functionText = "Provides Main B power to the SYS 2 N2 REG INLET switch on Panel L2"; :>> loadText = "the SYS 2 N2 REG INLET switch"; :>> breakerCount = 1; :>> sourcePage = 53; :>> isCounted = true; }
            part <'CBA-011'> cba_011 : BreakerRow { doc /* O15・MNB 行 3073 */ :>> panel = "O15"; :>> bus = "MNB"; :>> designation = "ATM PRESS CONTROL CABIN RELIEF A"; :>> functionText = "Provides Main B power to the CABIN RELIEF A switch on Panel L2"; :>> loadText = "the CABIN RELIEF A switch"; :>> breakerCount = 1; :>> sourcePage = 53; :>> isCounted = true; }
            part <'CBA-040'> cba_040 : BreakerRow { doc /* O15・MNB 行 5801 */ :>> panel = "O15"; :>> bus = "MNB"; :>> designation = "H2O BYP LOOP 2 SNSR"; :>> functionText = "Provides power for the H2O loop 2 inter-changer flow rate sensor"; :>> loadText = ""; :>> breakerCount = 1; :>> sourcePage = 93; :>> isCounted = true; }
            part <'CBA-042'> cba_042 : BreakerRow { doc /* O15・MNB 行 8232 */ :>> panel = "O15"; :>> bus = "MNB"; :>> designation = "FREON RAD CNTLR 1 – 2"; :>> functionText = "Provides the main B power to the radiator controllers"; :>> loadText = "the radiator controllers"; :>> breakerCount = 2; :>> sourcePage = 141; :>> isCounted = true; }
        }
        part panel_o16 : BreakerPanel {
            :>> panelName = "O16";
            part <'CBA-012'> cba_012 : BreakerRow { doc /* O16・MNC 行 3095 */ :>> panel = "O16"; :>> bus = "MNC"; :>> designation = "ATM PRESS CONTROL CABIN RELIEF B"; :>> functionText = "Provides Main C power to the CABIN RELIEF B switch on Panel L2"; :>> loadText = "the CABIN RELIEF B switch"; :>> breakerCount = 1; :>> sourcePage = 53; :>> isCounted = true; }
        }
    }
    part cbaBoundary {
        doc /* 境界の行（数えない。接続は持たない）。値は資料の欄のとおりで、読めない欄は空、個数の行が無い行は breakerCount を持たない（0 とは書かない） */
        part <'CBA-065'> cba_065 : BreakerRow { doc /* O16・MNC 行 3083 */ :>> panel = "O16"; :>> bus = "MNC"; :>> designation = ""; :>> functionText = ""; :>> loadText = ""; :>> sourcePage = 53; :>> isCounted = false; }
        part <'CBA-066'> cba_066 : BreakerRow { doc /* ML86B・MANNED MANUV 行 3172 */ :>> panel = "ML86B"; :>> bus = "MANNED MANUV"; :>> designation = ""; :>> functionText = ""; :>> loadText = ""; :>> sourcePage = 54; :>> isCounted = false; }
        part <'CBA-067'> cba_067 : BreakerRow { doc /* L4・FREON LOOP 1 行 8108 */ :>> panel = "L4"; :>> bus = "FREON LOOP 1"; :>> designation = "PUMP A"; :>> functionText = "AC1 3 – Phase power to FREON LOOP 1 PUMP A switch on Panel L1"; :>> loadText = "FREON LOOP 1 PUMP A switch"; :>> breakerCount = 3; :>> sourcePage = 140; :>> isCounted = false; }
        part <'CBA-068'> cba_068 : BreakerRow { doc /* L4・FREON LOOP 1 行 8116 */ :>> panel = "L4"; :>> bus = "FREON LOOP 1"; :>> designation = "PUMP B"; :>> functionText = "AC2 3 – Phase power to FREON LOOP 1 PUMP B switch on Panel L1"; :>> loadText = "FREON LOOP 1 PUMP B switch"; :>> breakerCount = 3; :>> sourcePage = 140; :>> isCounted = false; }
        part <'CBA-069'> cba_069 : BreakerRow { doc /* L4・FREON LOOP 2 行 8124 */ :>> panel = "L4"; :>> bus = "FREON LOOP 2"; :>> designation = "PUMP A"; :>> functionText = "AC3 3 – Phase power to FREON LOOP 2 PUMP A switch on Panel L1"; :>> loadText = "FREON LOOP 2 PUMP A switch"; :>> breakerCount = 3; :>> sourcePage = 140; :>> isCounted = false; }
        part <'CBA-070'> cba_070 : BreakerRow { doc /* L4・FREON LOOP 2 行 8132 */ :>> panel = "L4"; :>> bus = "FREON LOOP 2"; :>> designation = "PUMP B"; :>> functionText = "AC1 3 – Phase power to FREON LOOP 2 PUMP A switch on Panel L1"; :>> loadText = "FREON LOOP 2 PUMP A switch"; :>> breakerCount = 3; :>> sourcePage = 140; :>> isCounted = false; }
        part <'CBA-071'> cba_071 : BreakerRow { doc /* L4・FREON FLOW PROP 行 8140 */ :>> panel = "L4"; :>> bus = "FREON FLOW PROP"; :>> designation = "1"; :>> functionText = "AC2 φA power to FREON FLOW PROPORTIONING VALVE 1 switch on Panel L1"; :>> loadText = "FREON FLOW PROPORTIONING VALVE 1 switch"; :>> breakerCount = 1; :>> sourcePage = 140; :>> isCounted = false; }
        part <'CBA-072'> cba_072 : BreakerRow { doc /* L4・FREON SIG CONDR 行 8148 */ :>> panel = "L4"; :>> bus = "FREON SIG CONDR"; :>> designation = ""; :>> functionText = "AC2 φB power to the Freon signal conditioner"; :>> loadText = "the Freon signal conditioner"; :>> breakerCount = 1; :>> sourcePage = 140; :>> isCounted = false; }
        part <'CBA-073'> cba_073 : BreakerRow { doc /* L4・FREON FLOW PROP 行 8167 */ :>> panel = "L4"; :>> bus = "FREON FLOW PROP"; :>> designation = "2"; :>> functionText = "AC3 φA power to FREON FLOW PROPORTIONING VALVE 2 switch on Panel L1"; :>> loadText = "FREON FLOW PROPORTIONING VALVE 2 switch"; :>> breakerCount = 1; :>> sourcePage = 141; :>> isCounted = false; }
        part <'CBA-074'> cba_074 : BreakerRow { doc /* L4・FREON SIG CONDR 行 8175 */ :>> panel = "L4"; :>> bus = "FREON SIG CONDR"; :>> designation = ""; :>> functionText = "AC3 φB power to the Freon signal conditioner"; :>> loadText = "the Freon signal conditioner"; :>> breakerCount = 1; :>> sourcePage = 141; :>> isCounted = false; }
        part <'CBA-075'> cba_075 : BreakerRow { doc /* L4・RAD CNTLR 1B 行 8181 */ :>> panel = "L4"; :>> bus = "RAD CNTLR 1B"; :>> designation = ""; :>> functionText = "AC1 φA power to radiator controller 1B"; :>> loadText = "radiator controller 1B"; :>> breakerCount = 1; :>> sourcePage = 141; :>> isCounted = false; }
        part <'CBA-076'> cba_076 : BreakerRow { doc /* L4・RAD CNTLR 2B 行 8187 */ :>> panel = "L4"; :>> bus = "RAD CNTLR 2B"; :>> designation = ""; :>> functionText = "AC1 φB power to radiator controller 2B"; :>> loadText = "radiator controller 2B"; :>> breakerCount = 1; :>> sourcePage = 141; :>> isCounted = false; }
        part <'CBA-077'> cba_077 : BreakerRow { doc /* L4・RAD CNTLR 1A 行 8193 */ :>> panel = "L4"; :>> bus = "RAD CNTLR 1A"; :>> designation = ""; :>> functionText = "AC2 φB power to radiator controller 1A"; :>> loadText = "radiator controller 1A"; :>> breakerCount = 1; :>> sourcePage = 141; :>> isCounted = false; }
        part <'CBA-078'> cba_078 : BreakerRow { doc /* L4・RAD CNTLR 2A 行 8199 */ :>> panel = "L4"; :>> bus = "RAD CNTLR 2A"; :>> designation = ""; :>> functionText = "AC3 φB power to radiator controller 2A"; :>> loadText = "radiator controller 2A"; :>> breakerCount = 1; :>> sourcePage = 141; :>> isCounted = false; }
        part <'CBA-079'> cba_079 : BreakerRow { doc /* L4・AC2 φC power to rad isol 行 8205 */ :>> panel = "L4"; :>> bus = "AC2 φC power to rad isol"; :>> designation = "valve motor 1"; :>> functionText = ""; :>> loadText = ""; :>> breakerCount = 1; :>> sourcePage = 141; :>> isCounted = false; }
        part <'CBA-080'> cba_080 : BreakerRow { doc /* L4・AC3 φC power to rad isol 行 8210 */ :>> panel = "L4"; :>> bus = "AC3 φC power to rad isol"; :>> designation = "valve motor 2"; :>> functionText = ""; :>> loadText = ""; :>> breakerCount = 1; :>> sourcePage = 141; :>> isCounted = false; }
        part <'CBA-081'> cba_081 : BreakerRow { doc /* ML86B・MNA 行 9299 */ :>> panel = "ML86B"; :>> bus = "MNA"; :>> designation = ""; :>> functionText = "H2O LINE HTR A Main A power to H2O dump and vacuum vent line heaters"; :>> loadText = "H2O dump and vacuum vent line heaters"; :>> breakerCount = 1; :>> sourcePage = 167; :>> isCounted = false; }
        part <'CBA-082'> cba_082 : BreakerRow { doc /* ML86B・MNB 行 9327 */ :>> panel = "ML86B"; :>> bus = "MNB"; :>> designation = ""; :>> functionText = "H2O LINE HTR B Main B power to H2O dump and vacuum vent line HTRS"; :>> loadText = "H2O dump and vacuum vent line HTRS"; :>> breakerCount = 1; :>> sourcePage = 167; :>> isCounted = false; }
        part <'CBA-083'> cba_083 : BreakerRow { doc /* ML86B・MNA 行 9401 */ :>> panel = "ML86B"; :>> bus = "MNA"; :>> designation = ""; :>> functionText = "GALLEY OVEN Main A power to galley oven"; :>> loadText = "galley oven"; :>> breakerCount = 1; :>> sourcePage = 168; :>> isCounted = false; }
        part <'CBA-084'> cba_084 : BreakerRow { doc /* ML86B・MNA 行 9451 */ :>> panel = "ML86B"; :>> bus = "MNA"; :>> designation = ""; :>> functionText = ""; :>> loadText = ""; :>> sourcePage = 169; :>> isCounted = false; }
    }
    connection feed_001 : BusFeed connect cbaBuses.bus_mna to cbaPanels.panel_o14.cba_001;
    connection feed_002 : BusFeed connect cbaBuses.bus_mna to cbaPanels.panel_o14.cba_002;
    connection feed_003 : BusFeed connect cbaBuses.bus_mna to cbaPanels.panel_o14.cba_003;
    connection feed_004 : BusFeed connect cbaBuses.bus_mna to cbaPanels.panel_o14.cba_004;
    connection feed_005 : BusFeed connect cbaBuses.bus_mna to cbaPanels.panel_o14.cba_005;
    connection feed_006 : BusFeed connect cbaBuses.bus_mna to cbaPanels.panel_o14.cba_006;
    connection feed_007 : BusFeed connect cbaBuses.bus_mnb to cbaPanels.panel_o15.cba_007;
    connection feed_008 : BusFeed connect cbaBuses.bus_mnb to cbaPanels.panel_o15.cba_008;
    connection feed_009 : BusFeed connect cbaBuses.bus_mnb to cbaPanels.panel_o15.cba_009;
    connection feed_010 : BusFeed connect cbaBuses.bus_mnb to cbaPanels.panel_o15.cba_010;
    connection feed_011 : BusFeed connect cbaBuses.bus_mnb to cbaPanels.panel_o15.cba_011;
    connection feed_012 : BusFeed connect cbaBuses.bus_mnc to cbaPanels.panel_o16.cba_012;
    connection feed_013 : BusFeed connect cbaBuses.bus_ac1 to cbaPanels.panel_l4.cba_013;
    connection feed_014 : BusFeed connect cbaBuses.bus_ac2 to cbaPanels.panel_l4.cba_014;
    connection feed_015 : BusFeed connect cbaBuses.bus_ac3 to cbaPanels.panel_l4.cba_015;
    connection feed_016 : BusFeed connect cbaBuses.bus_ac1 to cbaPanels.panel_l4.cba_016;
    connection feed_017 : BusFeed connect cbaBuses.bus_ac2 to cbaPanels.panel_l4.cba_017;
    connection feed_018 : BusFeed connect cbaBuses.bus_ac3 to cbaPanels.panel_l4.cba_018;
    connection feed_019 : BusFeed connect cbaBuses.bus_ac1 to cbaPanels.panel_l4.cba_019;
    connection feed_020 : BusFeed connect cbaBuses.bus_ac2 to cbaPanels.panel_l4.cba_020;
    connection feed_021 : BusFeed connect cbaBuses.bus_ac3 to cbaPanels.panel_l4.cba_021;
    connection feed_022 : BusFeed connect cbaBuses.bus_ac1 to cbaPanels.panel_l4.cba_022;
    connection feed_023 : BusFeed connect cbaBuses.bus_ac2 to cbaPanels.panel_l4.cba_023;
    connection feed_024 : BusFeed connect cbaBuses.bus_ac3 to cbaPanels.panel_l4.cba_024;
    connection feed_025 : BusFeed connect cbaBuses.bus_ac1 to cbaPanels.panel_l4.cba_025;
    connection feed_026 : BusFeed connect cbaBuses.bus_ac2 to cbaPanels.panel_l4.cba_026;
    connection feed_027 : BusFeed connect cbaBuses.bus_ac3 to cbaPanels.panel_l4.cba_027;
    connection feed_028 : BusFeed connect cbaBuses.bus_ac3 to cbaPanels.panel_l4.cba_028;
    connection feed_029 : BusFeed connect cbaBuses.bus_ac1 to cbaPanels.panel_l4.cba_029;
    connection feed_030 : BusFeed connect cbaBuses.bus_ac1 to cbaPanels.panel_l4.cba_030;
    connection feed_031 : BusFeed connect cbaBuses.bus_ac2 to cbaPanels.panel_l4.cba_031;
    connection feed_032 : BusFeed connect cbaBuses.bus_ac3 to cbaPanels.panel_l4.cba_032;
    connection feed_033 : BusFeed connect cbaBuses.bus_ac1 to cbaPanels.panel_l4.cba_033;
    connection feed_034 : BusFeed connect cbaBuses.bus_ac1 to cbaPanels.panel_l4.cba_034;
    connection feed_035 : BusFeed connect cbaBuses.bus_ac2 to cbaPanels.panel_l4.cba_035;
    connection feed_036 : BusFeed connect cbaBuses.bus_ac2 to cbaPanels.panel_l4.cba_036;
    connection feed_037 : BusFeed connect cbaBuses.bus_ac3 to cbaPanels.panel_l4.cba_037;
    connection feed_038 : BusFeed connect cbaBuses.bus_ac3 to cbaPanels.panel_l4.cba_038;
    connection feed_039 : BusFeed connect cbaBuses.bus_mna to cbaPanels.panel_o14.cba_039;
    connection feed_040 : BusFeed connect cbaBuses.bus_mnb to cbaPanels.panel_o15.cba_040;
    connection feed_041 : BusFeed connect cbaBuses.bus_mna to cbaPanels.panel_o14.cba_041;
    connection feed_042 : BusFeed connect cbaBuses.bus_mnb to cbaPanels.panel_o15.cba_042;
    connection feed_043 : BusFeed connect cbaBuses.bus_mna to cbaPanels.panel_ml86b.cba_043;
    connection feed_044 : BusFeed connect cbaBuses.bus_mna to cbaPanels.panel_ml86b.cba_044;
    connection feed_045 : BusFeed connect cbaBuses.bus_mnb to cbaPanels.panel_ml86b.cba_045;
    connection feed_046 : BusFeed connect cbaBuses.bus_mnb to cbaPanels.panel_ml86b.cba_046;
    connection feed_047 : BusFeed connect cbaBuses.bus_mnb to cbaPanels.panel_ml86b.cba_047;
    connection feed_048 : BusFeed connect cbaBuses.bus_mnb to cbaPanels.panel_ml86b.cba_048;
    connection feed_049 : BusFeed connect cbaBuses.bus_mnc to cbaPanels.panel_ml86b.cba_049;
    connection feed_050 : BusFeed connect cbaBuses.bus_mnc to cbaPanels.panel_ml86b.cba_050;
    connection feed_051 : BusFeed connect cbaBuses.bus_mnc to cbaPanels.panel_ml86b.cba_051;
    connection feed_052 : BusFeed connect cbaBuses.bus_mnc to cbaPanels.panel_ml86b.cba_052;
    connection feed_053 : BusFeed connect cbaBuses.bus_mnc to cbaPanels.panel_ml86b.cba_053;
    connection feed_054 : BusFeed connect cbaBuses.bus_mna to cbaPanels.panel_ml86b.cba_054;
    connection feed_055 : BusFeed connect cbaBuses.bus_mna to cbaPanels.panel_ml86b.cba_055;
    connection feed_056 : BusFeed connect cbaBuses.bus_mna to cbaPanels.panel_ml86b.cba_056;
    connection feed_057 : BusFeed connect cbaBuses.bus_mna to cbaPanels.panel_ml86b.cba_057;
    connection feed_058 : BusFeed connect cbaBuses.bus_mna to cbaPanels.panel_ml86b.cba_058;
    connection feed_059 : BusFeed connect cbaBuses.bus_mnb to cbaPanels.panel_ml86b.cba_059;
    connection feed_060 : BusFeed connect cbaBuses.bus_mnb to cbaPanels.panel_ml86b.cba_060;
    connection feed_061 : BusFeed connect cbaBuses.bus_mnb to cbaPanels.panel_ml86b.cba_061;
    connection feed_062 : BusFeed connect cbaBuses.bus_mnb to cbaPanels.panel_ml86b.cba_062;
    connection feed_063 : BusFeed connect cbaBuses.bus_mnb to cbaPanels.panel_ml86b.cba_063;
    connection feed_064 : BusFeed connect cbaBuses.bus_mnb to cbaPanels.panel_ml86b.cba_064;
}
