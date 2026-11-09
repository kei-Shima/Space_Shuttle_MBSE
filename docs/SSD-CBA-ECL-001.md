# 回路遮断器の割り当て定義書（ECLSS のパネル・バス・名称・機能の文）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-CBA-ECL-001 |
| 表題 | 回路遮断器の割り当て定義書（ECLSS のパネル・バス・名称・機能の文） |
| 版・日付 | 初版（Rev. -）／2026-11-10 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-IBD-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図316 ECLSS 回路遮断器の割り当て：パネル×バスの配置・図317 ECLSS 回路遮断器の割り当て 内部ブロック図・図318 ECLSS 回路遮断器の割り当て：境界・未突合の割付の記録 |

## 1. 目的

ECLSS の回路遮断器が、どのパネルにあり、どのバスから電力を受け、どの名称・機能の文を持つかを、ECLSS 訓練マニュアルの回路遮断器の表から並べる。既存の図233・234（ECLSS 電力の内部ブロック図）は機器からバスまでを持ち、パネルと回路遮断器の層は無かった。本書は『パネル→バス→遮断器』の層を、SysML（バス・パネル・遮断器の行・接続）と 図316〜318 で示す。**判定・評価は付けない**。

## 2. 範囲と書き方

資料は ECLSS 訓練マニュアル（USA006020 Rev. B。同じ資料の別の写しはバイト単位で同じで、1つとして扱う）の回路遮断器の表。開始の行 89・終わりの行 91 から、数える 64 行（遮断器 98）・境界 20 行・数えない 5 行・孤立した終わりの行 6 に分けた。**行と遮断器は別に数える**（『3 cb’s』の行は遮断器3）。値は本文のまま（換算・補完しない）。**規則は結果を見てから1回足した**：初回の規則（PLAN_DK §2・§7・§8）では数える行は 24 行だった。境界の理由が2つの形式の違いだったので、『N cb’s』の個数の行と、パネル・Circuit breaker・バスが1行に並ぶ開始の行を足した（PLAN_DK §9。ユーザーの承認 2026-11-10）。初回に数えた 24 行は、足したあとも同じ値で数える。

## 3. パネル×バスの件数

数える 64 行のパネル×バスの組 9。行は表の行、遮断器は個数の合計（行と遮断器は別）。

| パネル | バス | 行 | 遮断器 |
|---|---|---|---|
| L4 | AC1 | 9 | 19 |
| L4 | AC2 | 8 | 20 |
| L4 | AC3 | 9 | 19 |
| ML86B | MNA | 7 | 7 |
| ML86B | MNB | 10 | 10 |
| ML86B | MNC | 5 | 5 |
| O14 | MNA | 8 | 9 |
| O15 | MNB | 7 | 8 |
| O16 | MNC | 1 | 1 |

## 4. 回路遮断器の割り当て（数える行）

数える 64 行（遮断器 98）。名称は系統の名称と遮断器の名前を区切りなく連ねたもの。負荷の文字列は機能の文の『power to』の後ろ。形式は、資料の行の形（複数行＝『Circuit breaker』が単独の行、1行＝パネル・Circuit breaker・バスが同じ行）。

| ID | パネル | バス | 名称 | 機能の文 | 個数 | 負荷の文字列 | 形式 | 根拠 |
|---|---|---|---|---|---|---|---|---|
| CBA-001 | O14 | MNA | ATM PRESS CONTROL N2 SUPPLY 1 | Provides Main A power to the N2 SYS 1 SUPPLY switch on Panel L2 | 1 | the N2 SYS 1 SUPPLY switch | 複数行 | O14・MNA：ATM PRESS CONTROL N2 SUPPLY 1（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=52） |
| CBA-002 | O14 | MNA | ATM PRESS CONTROL O2/N2 CNTLR 1 | Provides Main A power to the SYS 1 O2/N2 CNTLR VLV switch on Panel L2 | 1 | the SYS 1 O2/N2 CNTLR VLV switch | 複数行 | O14・MNA：ATM PRESS CONTROL O2/N2 CNTLR 1（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=52） |
| CBA-003 | O14 | MNA | ATM PRESS CONTROL O2 XOVR 1 | Provides Main A power to the SYS 1 O2 XOVR switch on Panel L2 | 1 | the SYS 1 O2 XOVR switch | 複数行 | O14・MNA：ATM PRESS CONTROL O2 XOVR 1（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=52） |
| CBA-004 | O14 | MNA | ATM PRESS CONTROL N2 REG INLET | Provides Main A power to the SYS 1 N2 REG INLET switch on Panel L2 | 1 | the SYS 1 N2 REG INLET switch | 複数行 | O14・MNA：ATM PRESS CONTROL N2 REG INLET（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=52） |
| CBA-005 | O14 | MNA | ATM PRESS CONTROL CABIN VENT | Provides Main A power to the CABIN VENT switch on Panel L2 | 1 | the CABIN VENT switch | 複数行 | O14・MNA：ATM PRESS CONTROL CABIN VENT（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=52） |
| CBA-006 | O14 | MNA | ATM PRESS CONTROL CABIN VENT ISOL | Provides Main A power to the CABIN VENT ISOL SWITCH, Panel L2 | 1 | the CABIN VENT ISOL SWITCH | 複数行 | O14・MNA：ATM PRESS CONTROL CABIN VENT ISOL（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=52） |
| CBA-007 | O15 | MNB | ATM PRESS CONTROL PPO2 C CAB dP/dT | Provides Main B power to the dP/dT sensor and PPO2 C sensor power supply | 1 | the dP/dT sensor and PPO2 C sensor power supply | 複数行 | O15・MNB：ATM PRESS CONTROL PPO2 C CAB dP/dT（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=52） |
| CBA-008 | O15 | MNB | ATM PRESS CONTROL N2 SUPPLY 2 | Provides Main B power to the SYS 2 N2 SUPPLY switch on Panel L2 | 1 | the SYS 2 N2 SUPPLY switch | 複数行 | O15・MNB：ATM PRESS CONTROL N2 SUPPLY 2（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=53） |
| CBA-009 | O15 | MNB | ATM PRESS CONTROL O2/N2 CNTLR 2 | Provides Main B power to the SYS 2 O2/N2 CNTLR VLV switch on Panel L2 | 1 | the SYS 2 O2/N2 CNTLR VLV switch | 複数行 | O15・MNB：ATM PRESS CONTROL O2/N2 CNTLR 2（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=53） |
| CBA-010 | O15 | MNB | ATM PRESS CONTROL N2 REG INLET 2 | Provides Main B power to the SYS 2 N2 REG INLET switch on Panel L2 | 1 | the SYS 2 N2 REG INLET switch | 複数行 | O15・MNB：ATM PRESS CONTROL N2 REG INLET 2（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=53） |
| CBA-011 | O15 | MNB | ATM PRESS CONTROL CABIN RELIEF A | Provides Main B power to the CABIN RELIEF A switch on Panel L2 | 1 | the CABIN RELIEF A switch | 複数行 | O15・MNB：ATM PRESS CONTROL CABIN RELIEF A（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=53） |
| CBA-012 | O16 | MNC | ATM PRESS CONTROL CABIN RELIEF B | Provides Main C power to the CABIN RELIEF B switch on Panel L2 | 1 | the CABIN RELIEF B switch | 複数行 | O16・MNC：ATM PRESS CONTROL CABIN RELIEF B（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=53） |
| CBA-013 | L4 | AC1 | φA-φB-φC H2O LOOP PUMP 1ª/2 | Provides 3-phase AC1 power to LOOP 1 PUMP A H2O PUMP switch on Panel L1.  Also provides 3-phase AC1 power to H2O PUMP LO… | 3 | LOOP 1 PUMP A H2O PUMP switch | 複数行 | L4・AC1：φA-φB-φC H2O LOOP PUMP 1ª/2（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=91） |
| CBA-014 | L4 | AC2 | φA-φB-φC H2O LOOP PUMP 1B | 3-phase AC2 power to LOOP 1 PUMP B switch on Panel L1 | 3 | LOOP 1 PUMP B switch | 複数行 | L4・AC2：φA-φB-φC H2O LOOP PUMP 1B（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=91） |
| CBA-015 | L4 | AC3 | φA-φB-φC H2O LOOP PUMP 2 | 3-phase AC3 power to LOOP 2 H2O PUMP switch on Panel L1 | 3 | LOOP 2 H2O PUMP switch | 複数行 | L4・AC3：φA-φB-φC H2O LOOP PUMP 2（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=91） |
| CBA-016 | L4 | AC1 | AV BAY 1 FAN A | 3-phase AC1 power to AVIONICS BAY 1 FAN A switch on Panel L1 | 3 | AVIONICS BAY 1 FAN A switch | 複数行 | L4・AC1：AV BAY 1 FAN A（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=91） |
| CBA-017 | L4 | AC2 | AV BAY 1 FAN B | 3-phase AC2 power to AVIONICS BAY 1 FAN B switch on Panel L1 | 3 | AVIONICS BAY 1 FAN B switch | 複数行 | L4・AC2：AV BAY 1 FAN B（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=91） |
| CBA-018 | L4 | AC3 | AV BAY 3 FAN A | 3-phase AC3 power to AVIONICS BAY 3 FAN A switch on Panel L1 | 3 | AVIONICS BAY 3 FAN A switch | 複数行 | L4・AC3：AV BAY 3 FAN A（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=91） |
| CBA-019 | L4 | AC1 | AV BAY 3 | 3-phase AC1 power to AVIONICS BAY 3 FAN B switch on Panel L1 | 3 | AVIONICS BAY 3 FAN B switch | 複数行 | L4・AC1：AV BAY 3（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=91） |
| CBA-020 | L4 | AC2 | AV BAY 2 FAN A | 3-phase AC2 power to AVIONICS BAY 2 FAN A switch on Panel L1 | 3 | AVIONICS BAY 2 FAN A switch | 複数行 | L4・AC2：AV BAY 2 FAN A（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=91） |
| CBA-021 | L4 | AC3 | AV BAY 2 FAN B | 3-phase AC3 power to AVIONICS BAY 2 FAN B switch on Panel L1 | 3 | AVIONICS BAY 2 FAN B switch | 複数行 | L4・AC3：AV BAY 2 FAN B（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=91） |
| CBA-022 | L4 | AC1 | IMU FAN A | 3-phase AC1 power to IMU FAN A switch on Panel L1 | 3 | IMU FAN A switch | 複数行 | L4・AC1：IMU FAN A（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=91） |
| CBA-023 | L4 | AC2 | IMU FAN B | 3-phase AC2 power to IMU FAN B switch on Panel L1 | 3 | IMU FAN B switch | 複数行 | L4・AC2：IMU FAN B（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=91） |
| CBA-024 | L4 | AC3 | IMU FAN C | 3-phase AC3 power to IMU FAN C switch on Panel L1 | 3 | IMU FAN C switch | 複数行 | L4・AC3：IMU FAN C（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=91） |
| CBA-025 | L4 | AC1 | HUMIDITY SEPARATOR A | 3-phase AC1 power to HUMIDITY SEPARATOR A switch on Panel L1 | 3 | HUMIDITY SEPARATOR A switch | 複数行 | L4・AC1：HUMIDITY SEPARATOR A（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92） |
| CBA-026 | L4 | AC2 | HUMIDITY SEPARATOR A | 3-phase AC2 power to HUMIDITY SEPARATOR B switch on Panel L1 | 3 | HUMIDITY SEPARATOR B switch | 複数行 | L4・AC2：HUMIDITY SEPARATOR A（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92） |
| CBA-027 | L4 | AC3 | SIG CONDR HUM SEP | AC3 φA power to humidity separator signal conditioners | 1 | humidity separator signal conditioners | 複数行 | L4・AC3：SIG CONDR HUM SEP（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92） |
| CBA-028 | L4 | AC3 | SIG CONDR IMU FAN | AC3 φB power to IMU FAN signal conditioner | 1 | IMU FAN signal conditioner | 複数行 | L4・AC3：SIG CONDR IMU FAN（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92） |
| CBA-029 | L4 | AC1 | H2O CNTLR 2 | AC1 φA power to H2O controller 2 | 1 | H2O controller 2 | 複数行 | L4・AC1：H2O CNTLR 2（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92） |
| CBA-030 | L4 | AC1 | CABIN AIR S/C | AC1 φB power to cabin air signal conditioner | 1 | cabin air signal conditioner | 複数行 | L4・AC1：CABIN AIR S/C（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92） |
| CBA-031 | L4 | AC2 | CABIN FAN B | AC2 3-phase power to the CABIN FAN B switch on Panel L1 | 3 | the CABIN FAN B switch | 複数行 | L4・AC2：CABIN FAN B（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92） |
| CBA-032 | L4 | AC3 | CABIN FAN A | AC3 3-phase power to CABIN FAN A switch on Panel L1 | 3 | CABIN FAN A switch | 複数行 | L4・AC3：CABIN FAN A（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92） |
| CBA-033 | L4 | AC1 | CABIN CNTLR 2 | AC1 φA power to cabin temperature controller 2 switch on Panel L1 | 1 | cabin temperature controller 2 switch | 複数行 | L4・AC1：CABIN CNTLR 2（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92） |
| CBA-034 | L4 | AC1 | AV BAY 2 S/C | AC1 φB power to the avionics bay 2 signal conditioner | 1 | the avionics bay 2 signal conditioner | 複数行 | L4・AC1：AV BAY 2 S/C（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92） |
| CBA-035 | L4 | AC2 | CABIN T CNTLR 1 | AC2 φA power to cabin temperature controller 1 switch on Panel L1 | 1 | cabin temperature controller 1 switch | 複数行 | L4・AC2：CABIN T CNTLR 1（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92） |
| CBA-036 | L4 | AC2 | AV BAY 3 S/C | AC2 φB power to the avionics bay 3 signal conditioner | 1 | the avionics bay 3 signal conditioner | 複数行 | L4・AC2：AV BAY 3 S/C（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92） |
| CBA-037 | L4 | AC3 | H2O CNTLR | AC3 φA power to H2O controller 1 | 1 | H2O controller 1 | 複数行 | L4・AC3：H2O CNTLR（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92） |
| CBA-038 | L4 | AC3 | AV BAY 1 S/C | AC3 φB power to the avionics bay 1 signal conditioner | 1 | the avionics bay 1 signal conditioner | 複数行 | L4・AC3：AV BAY 1 S/C（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=93） |
| CBA-039 | O14 | MNA | H2O BYP LOOP 1 SNSR | Provides power for the H2O loop 1 inter-changer flow rate sensor and the IMU fan ∆P sensor | 1 | — | 複数行 | O14・MNA：H2O BYP LOOP 1 SNSR（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=93） |
| CBA-040 | O15 | MNB | H2O BYP LOOP 2 SNSR | Provides power for the H2O loop 2 inter-changer flow rate sensor | 1 | — | 複数行 | O15・MNB：H2O BYP LOOP 2 SNSR（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=93） |
| CBA-041 | O14 | MNA | FREON RAD CNTLR 1 – 2 | Provides main A power to the radiator controllers | 2 | the radiator controllers | 1行 | O14・MNA：FREON RAD CNTLR 1 – 2（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=141） |
| CBA-042 | O15 | MNB | FREON RAD CNTLR 1 – 2 | Provides the main B power to the radiator controllers | 2 | the radiator controllers | 1行 | O15・MNB：FREON RAD CNTLR 1 – 2（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=141） |
| CBA-043 | ML86B | MNA | SUPPLY H2O TK A INLET | Main A power to tank A inlet switch on Panel R11 | 1 | tank A inlet switch | 1行 | ML86B・MNA：SUPPLY H2O TK A INLET（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=167） |
| CBA-044 | ML86B | MNA | SUPPLY H2O TK B OUTLET | Main A power to tank B outlet switch on Panel R11 | 1 | tank B outlet switch | 1行 | ML86B・MNA：SUPPLY H2O TK B OUTLET（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=167） |
| CBA-045 | ML86B | MNB | SUPPLY H2O TK B INLET | Main B power to H2O tank B inlet switch on Panel R11 | 1 | H2O tank B inlet switch | 1行 | ML86B・MNB：SUPPLY H2O TK B INLET（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=167） |
| CBA-046 | ML86B | MNB | SUPPLY H2O TK B OUTLET | Main B power to H2O tank C outlet switch on Panel R11 | 1 | H2O tank C outlet switch | 1行 | ML86B・MNB：SUPPLY H2O TK B OUTLET（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=167） |
| CBA-047 | ML86B | MNB | SUPPLY H2O DUMP ISOL | Main B power to the dump ISOL switch on Panel R11 | 1 | the dump ISOL switch | 1行 | ML86B・MNB：SUPPLY H2O DUMP ISOL（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=167） |
| CBA-048 | ML86B | MNB | SUPPLY H2O B SPLY ISOL VLV | Main B power to the B SPLY isolation switch on Panel R11 | 1 | the B SPLY isolation switch | 1行 | ML86B・MNB：SUPPLY H2O B SPLY ISOL VLV（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=167） |
| CBA-049 | ML86B | MNC | SUPPLY H2O TK A OUTLET | Main C power to H2O TK A OUTLET switch on Panel R11 | 1 | H2O TK A OUTLET switch | 1行 | ML86B・MNC：SUPPLY H2O TK A OUTLET（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=167） |
| CBA-050 | ML86B | MNC | SUPPLY H2O TK C INLET | Main C power to H2O TK C INLET switch on Panel R11 | 1 | H2O TK C INLET switch | 1行 | ML86B・MNC：SUPPLY H2O TK C INLET（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=168） |
| CBA-051 | ML86B | MNC | SUPPLY H2O DUMP VLV/NOZ HTR | Main C power to dump valve nozzle heater switch on Panel R11 | 1 | dump valve nozzle heater switch | 1行 | ML86B・MNC：SUPPLY H2O DUMP VLV/NOZ HTR（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=168） |
| CBA-052 | ML86B | MNC | SUPPLY H2O XOUR VLV | Main C power to crossover valve switch on Panel R11 | 1 | crossover valve switch | 1行 | ML86B・MNC：SUPPLY H2O XOUR VLV（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=168） |
| CBA-053 | ML86B | MNC | SUPPLY H2O GALLEY SUPPLY | Main power to galley supply switch on Panel R11 | 1 | galley supply switch | 1行 | ML86B・MNC：SUPPLY H2O GALLEY SUPPLY（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=168） |
| CBA-054 | ML86B | MNA | WASTE H2O TK 1 VLV | Main A power to tank 1 valve on Panel ML31C | 1 | tank 1 valve | 1行 | ML86B・MNA：WASTE H2O TK 1 VLV（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=168） |
| CBA-055 | ML86B | MNA | SUPPLY H2O TK D OUTLET | Main A power to tank D outlet switch on Panel ML31C | 1 | tank D outlet switch | 1行 | ML86B・MNA：SUPPLY H2O TK D OUTLET（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=168） |
| CBA-056 | ML86B | MNA | WASTE H2O DUMP ISOL A | Main A power to dump isolation switch on Panel ML31C | 1 | dump isolation switch | 1行 | ML86B・MNA：WASTE H2O DUMP ISOL A（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=168） |
| CBA-057 | ML86B | MNA | VAC VENT ISOL VLV | Main A power to vacuum vent isolation valve on Panel ML31C | 1 | vacuum vent isolation valve | 1行 | ML86B・MNA：VAC VENT ISOL VLV（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=168） |
| CBA-058 | ML86B | MNA | WCS CNTLR | Main A power to WCS controller ML31C | 1 | WCS controller ML31C | 1行 | ML86B・MNA：WCS CNTLR（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=168） |
| CBA-059 | ML86B | MNB | WASTE H2O TK 1 DRAIN | Main B power to tank 1 drain switch on Panel ML31C | 1 | tank 1 drain switch | 1行 | ML86B・MNB：WASTE H2O TK 1 DRAIN（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=168） |
| CBA-060 | ML86B | MNB | SUPPLY H2O TK D INLET | Main B power to tank D inlet switch on Panel ML31C | 1 | tank D inlet switch | 1行 | ML86B・MNB：SUPPLY H2O TK D INLET（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=168） |
| CBA-061 | ML86B | MNB | VAC VENT NOZ HTR | Main B power to vacuum vent nozzle heater switch on Panel ML31C | 1 | vacuum vent nozzle heater switch | 1行 | ML86B・MNB：VAC VENT NOZ HTR（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=168） |
| CBA-062 | ML86B | MNB | VAC VENT ISOL VLV | Main B power to vacuum vent isolation valve switch on Panel ML31C | 1 | vacuum vent isolation valve switch | 1行 | ML86B・MNB：VAC VENT ISOL VLV（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=169） |
| CBA-063 | ML86B | MNB | WCS CNTLR | Main B power to WCS controller on Panel ML31C | 1 | WCS controller | 1行 | ML86B・MNB：WCS CNTLR（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=169） |
| CBA-064 | ML86B | MNB | GALLEY H2O HTR | Main B power to galley H2O heater | 1 | galley H2O heater | 1行 | ML86B・MNB：GALLEY H2O HTR（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=169） |

## 5. 境界の行（数えない）

載せるが数えない 20 行。バスの欄が MNA・MNB・MNC・AC1〜3 でない、名称と機能の文が同じ行に混ざって名称を取れない、個数の行が無い、など。値は資料の欄のとおりで、読めない欄は『—』。

| ID | パネル | バスの欄 | 名称 | 理由 | 資料の行 | 根拠 |
|---|---|---|---|---|---|---|
| CBA-065 | O16 | MNC | — | 個数の行（N cb）が無い・名称が無い・機能の文（Provides … power to …）が無い | 3083 | O16・MNC：（名称が読めない）（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=53） |
| CBA-066 | ML86B | MANNED MANUV | — | バスが MNA・MNB・MNC・AC1〜3 でない（MANNED MANUV）・個数の行（N cb）が無い・名称が無い・機能の文（Provides … power to …）が無い | 3172 | ML86B・MANNED MANUV：（名称が読めない）（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=54） |
| CBA-067 | L4 | FREON LOOP 1 | PUMP A | バスが MNA・MNB・MNC・AC1〜3 でない（FREON LOOP 1） | 8108 | L4・FREON LOOP 1：PUMP A（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=140） |
| CBA-068 | L4 | FREON LOOP 1 | PUMP B | バスが MNA・MNB・MNC・AC1〜3 でない（FREON LOOP 1） | 8116 | L4・FREON LOOP 1：PUMP B（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=140） |
| CBA-069 | L4 | FREON LOOP 2 | PUMP A | バスが MNA・MNB・MNC・AC1〜3 でない（FREON LOOP 2） | 8124 | L4・FREON LOOP 2：PUMP A（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=140） |
| CBA-070 | L4 | FREON LOOP 2 | PUMP B | バスが MNA・MNB・MNC・AC1〜3 でない（FREON LOOP 2） | 8132 | L4・FREON LOOP 2：PUMP B（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=140） |
| CBA-071 | L4 | FREON FLOW PROP | 1 | バスが MNA・MNB・MNC・AC1〜3 でない（FREON FLOW PROP） | 8140 | L4・FREON FLOW PROP：1（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=140） |
| CBA-072 | L4 | FREON SIG CONDR | — | バスが MNA・MNB・MNC・AC1〜3 でない（FREON SIG CONDR）・名称が無い | 8148 | L4・FREON SIG CONDR：（名称が読めない）（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=140） |
| CBA-073 | L4 | FREON FLOW PROP | 2 | バスが MNA・MNB・MNC・AC1〜3 でない（FREON FLOW PROP） | 8167 | L4・FREON FLOW PROP：2（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=141） |
| CBA-074 | L4 | FREON SIG CONDR | — | バスが MNA・MNB・MNC・AC1〜3 でない（FREON SIG CONDR）・名称が無い | 8175 | L4・FREON SIG CONDR：（名称が読めない）（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=141） |
| CBA-075 | L4 | RAD CNTLR 1B | — | バスが MNA・MNB・MNC・AC1〜3 でない（RAD CNTLR 1B）・名称が無い | 8181 | L4・RAD CNTLR 1B：（名称が読めない）（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=141） |
| CBA-076 | L4 | RAD CNTLR 2B | — | バスが MNA・MNB・MNC・AC1〜3 でない（RAD CNTLR 2B）・名称が無い | 8187 | L4・RAD CNTLR 2B：（名称が読めない）（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=141） |
| CBA-077 | L4 | RAD CNTLR 1A | — | バスが MNA・MNB・MNC・AC1〜3 でない（RAD CNTLR 1A）・名称が無い | 8193 | L4・RAD CNTLR 1A：（名称が読めない）（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=141） |
| CBA-078 | L4 | RAD CNTLR 2A | — | バスが MNA・MNB・MNC・AC1〜3 でない（RAD CNTLR 2A）・名称が無い | 8199 | L4・RAD CNTLR 2A：（名称が読めない）（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=141） |
| CBA-079 | L4 | AC2 φC power to rad isol | valve motor 1 | バスが MNA・MNB・MNC・AC1〜3 でない（AC2 φC power to rad isol）・機能の文（Provides … power to …）が無い | 8205 | L4・AC2 φC power to rad isol：valve motor 1（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=141） |
| CBA-080 | L4 | AC3 φC power to rad isol | valve motor 2 | バスが MNA・MNB・MNC・AC1〜3 でない（AC3 φC power to rad isol）・機能の文（Provides … power to …）が無い | 8210 | L4・AC3 φC power to rad isol：valve motor 2（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=141） |
| CBA-081 | ML86B | MNA | — | 名称が無い | 9299 | ML86B・MNA：（名称が読めない）（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=167） |
| CBA-082 | ML86B | MNB | — | 名称が無い | 9327 | ML86B・MNB：（名称が読めない）（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=167） |
| CBA-083 | ML86B | MNA | — | 名称が無い | 9401 | ML86B・MNA：（名称が読めない）（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=168） |
| CBA-084 | ML86B | MNA | — | 個数の行（N cb）が無い・名称が無い・機能の文（Provides … power to …）が無い | 9451 | ML86B・MNA：（名称が読めない）（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=169） |

## 6. 数えない行・孤立した終わりの行

数えない 5 行（説明文 2・重複 3）と、開始の行の無い終わりの行 6。重複はパネル・バス・名称・機能の文・個数が文字まで同じ行（後の行を数えない）。

| 資料の行 | 頁 | 内容 | 区分 | 理由 |
|---|---|---|---|---|
| 2994 | 52 | Circuit breaker | 数えない | 同じ（パネル・バス・名称）の行が行 2961 にある（重複） |
| 3004 | 52 | Circuit breaker | 数えない | 同じ（パネル・バス・名称）の行が行 2972 にある（重複） |
| 3029 | 53 | Circuit breaker | 数えない | 同じ（パネル・バス・名称）の行が行 2983 にある（重複） |
| 9723 | 171 | Circuit breaker MNC H2O ALT PRESS MNC power to the… | 数えない | 説明文の行（表の行ではない） |
| 12350 | 225 | Circuit breakers for the ac power sources are foun… | 数えない | 説明文の行（表の行ではない） |
| 8231 | 141 | 1 cb | 孤立した終わり | 終わりの行だけがあり、開始の行が無い |
| 8246 | 141 | 2 cb’s | 孤立した終わり | 終わりの行だけがあり、開始の行が無い |
| 10696 | 192 | 2 cb’s | 孤立した終わり | 終わりの行だけがあり、開始の行が無い |
| 10706 | 192 | 2 cb’s | 孤立した終わり | 終わりの行だけがあり、開始の行が無い |
| 10795 | 193 | 3 cb’s | 孤立した終わり | 終わりの行だけがあり、開始の行が無い |
| 10804 | 193 | 3 cb’s | 孤立した終わり | 終わりの行だけがあり、開始の行が無い |

## 7. 負荷の突合（既存の図233・234 の機器の名前）

負荷の文字列（機能の文の『power to』の後ろ）を、図233・234 の部品の名前と、大文字化・記号と空白の除去だけで完全一致させた（事前の鍵。PLAN_DK §7-2）。

| 項目 | 値 |
|---|---|
| 負荷の文字列を持つ行 | 62 |
| 図233・234 の部品の名前（語） | 199 |
| 完全一致 | 0 |
| 図317 の描き方 | パネル→バス→遮断器だけ（負荷は『未突合の負荷』の箱） |

## 8. 図

図316〜318：図316 はパネル×バスの件数の表、図317 は内部ブロック図（バス→パネル×バスの組→遮断器。SysML の接続と一対一）、図318 は境界・数えない行・孤立した終わりの行の表である。

## 9. SysML v2 テキスト

同じ内容を SysML v2 のテキスト [SysML/SSD-CBA-ECL-001.sysml](../SysML/SSD-CBA-ECL-001.sysml) に示す。バス 6・パネル 5・遮断器の行 84（数える 64・境界 20）・バス→遮断器の接続 64 本（connection BusFeed）から成る。OMG SysML v2 Pilot Implementation 0.62.0（2026-08 リリース、標準ライブラリ付き）で読み込んで、構文・名前の解決・型の検査で誤り 0件・警告 0件を確かめた。バスは本パッケージの中だけのもので、SSD-IBD-ORB-001 の機器・バスには結ばない。

## 10. 注記（出典間の相違・構成変更）

> **注記** 範囲・取れなかった値・本書の判断：本書は ECLSS 訓練マニュアルの回路遮断器の表を、パネル・バス・名称・機能の文・個数に分けて並べたもの。値は本文のまま（換算・補完しない）。**判定・評価は付けない**。

> **注記** 範囲・取れなかった値・本書の判断：**規則は結果を見てから1回足した**：初回（PLAN_DK §2・§7・§8）は数える 24 行だったが、境界の理由が『個数の行が『N cb’s』の形』と『パネル・Circuit breaker・バスが1行に並ぶ形』の2つだったので、この2形式だけを足した（PLAN_DK §9。ユーザーの承認 2026-11-10）。初回に数えた 24 行は、足したあとも同じ値で数える（不変の検査）。足したあとは数える 64 行。

> **注記** 範囲・取れなかった値・本書の判断：**行と遮断器は別に数える**：数える 64 行で、遮断器は 98（『3 cb’s』の 16 行が3、2 行が2、残りが1）。

> **注記** 範囲・取れなかった値・本書の判断：候補は、開始の行（『Circuit breaker(s)』の行 61、1行の開始 28）から終わりの行（『N cb』など）までの行のまとまり。開始の行 89・終わりの行 91（資料に『circuit breaker』を含む行は 121。説明文・手順文を含む）。すべての候補は 数える 64・境界 20・数えない 5（説明文 2・重複 3）のどれかに入り、開始の行の無い終わりの行 6 は孤立として別に示す。

> **注記** 範囲・取れなかった値・本書の判断：境界 20 行：バスの欄が MNA・MNB・MNC・AC1〜3 でない（FREON LOOP・RAD CNTLR・MMU の『MNA (MNB)』など）、名称と機能の文が同じ行に混ざって名称を取れない、などの行。値は載せるが数えない。

> **注記** 範囲・取れなかった値・本書の判断：**負荷は既存の機器に結べなかった**：機能の文の『power to』の後ろ（別のパネルのスイッチなど）62 件を、図233・234 の部品の名前と大文字化・記号と空白の除去だけで完全一致させたところ、一致は 0 件。鍵は変えていない（事前の規則）。図317 は『パネル→バス→遮断器』だけを描き、負荷は『未突合の負荷』の箱に置く。

> **注記** 範囲・取れなかった値・本書の判断：名称（系統の名称と遮断器の名前）は、テキスト層では区切りの無い連続した行で、確実には分けられないので1つの欄にした。図の数・位置（パネルの盤の図）は読まない（SCOM の盤の図は取り込まない）。

> **注記** 範囲・取れなかった値・本書の判断：**解釈の記録（数える行は変わらない）**：説明文の判定（開始の行が40字超・文末が句読点）は『Circuit breaker』で始まる行にだけ当て、1行の開始の行には当てない。最初の実行で名称と機能の文が同じ行に混ざった1行の開始の3行が説明文に誤判定され、境界に直した。

> **注記** 範囲・取れなかった値・本書の判断：重複 3 組（行 2961/2994・2972/3004・2983/3029）は、パネル・バス・名称・機能の文・個数が文字まで同じで、表の同じ行が2回ある。事前の規則のとおり後の行を数えない。

> **注記** 範囲・取れなかった値・本書の判断：E の調べの 107 行は緩い数え方の概数で、行の母集団が違うので再現できない。本書の母集団は、バスだけの行 44・『circuit breaker』を含む行 121（説明文・手順文を含む）・開始 89・終わり 91。

> **注記** 範囲・取れなかった値・本書の判断：**SysML の構造**：バス 6 つ・パネル 5 つ（中に数える行の遮断器の行）・バス→遮断器の接続（connection BusFeed）64 本を持ち、図317 が一対一で描く。このバスは**本書のパッケージの中だけのもの**で、SSD-IBD-ORB-001 の機器・バス（図233・234）には結んでいない。

> **注記** 範囲・取れなかった値・本書の判断：同じ資料の別の写し（tm.txt）はバイト単位で同じで、1つの資料として扱った。資料の本文に無い値（定格電流・保護対象の機器の型番など）は書かない。トレース（SSD-TRC-SYS-001）の外に置く。

## 11. 参考文献

1. USA006020 Rev. B ECLSS Training Manual（2006-10-23、232頁、7,067,870 バイト） （PDF p52） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=52
2. USA006020 Rev. B ECLSS Training Manual（2006-10-23、232頁、7,067,870 バイト） （PDF p53） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=53
3. USA006020 Rev. B ECLSS Training Manual（2006-10-23、232頁、7,067,870 バイト） （PDF p91） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=91
4. USA006020 Rev. B ECLSS Training Manual（2006-10-23、232頁、7,067,870 バイト） （PDF p92） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92
5. USA006020 Rev. B ECLSS Training Manual（2006-10-23、232頁、7,067,870 バイト） （PDF p93） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=93
6. USA006020 Rev. B ECLSS Training Manual（2006-10-23、232頁、7,067,870 バイト） （PDF p141） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=141
7. USA006020 Rev. B ECLSS Training Manual（2006-10-23、232頁、7,067,870 バイト） （PDF p167） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=167
8. USA006020 Rev. B ECLSS Training Manual（2006-10-23、232頁、7,067,870 バイト） （PDF p168） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=168
9. USA006020 Rev. B ECLSS Training Manual（2006-10-23、232頁、7,067,870 バイト） （PDF p169） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=169
10. USA006020 Rev. B ECLSS Training Manual（2006-10-23、232頁、7,067,870 バイト） （PDF p54） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=54
11. USA006020 Rev. B ECLSS Training Manual（2006-10-23、232頁、7,067,870 バイト） （PDF p140） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=140
12. OMG Systems Modeling Language (SysML) Version 2.0 仕様 — https://www.omg.org/spec/SysML/2.0
13. SysML v2 Release（OMG SysML v2 Pilot Implementation の公開リリース・標準ライブラリ） — https://github.com/Systems-Modeling/SysML-v2-Release

## 12. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-11-10 | 初版作成（回路遮断器の割り当て：数える 64 行〔遮断器 98〕・境界 20、規則は結果を見てから1回足した、図316〜318、SysML v2 テキスト〔バス・パネル・遮断器の行・接続〕） |
