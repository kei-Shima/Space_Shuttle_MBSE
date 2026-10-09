# ベイ固定消火ボトル（FIX）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-FDS-FIX-001 |
| 表題 | ベイ固定消火ボトル（FIX）機能説明書 |
| 版・日付 | Rev. A／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-FDS-001 |
| 関連図 | SSD-SYS-ARC-001 図26 煙検知・消火系 機能構成 |

## 1. 目的

前方アビオニクスベイ1・2・3Aに常設したHalon 1301消火ボトルを、パネルL1のARMスイッチとAGENT DISCH押しボタンで遠隔放出してベイ内の火災を消火する機能と、放出後の濃度・有効時間・喪失の判定を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-FDS-FIX-01 | 前方アビオニクスベイ1・2・3AにHalon消火ボトルが1本ずつ常設され、各ボトルは長さ8 in・直径4.25 inの圧力容器に3.74〜3.8 lbのHalonを収める（SCOM 2.2節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118） |
| F-ECL-FDS-FIX-02 | 放出は、パネルL1の該当するFIRE SUPPRESSIONスイッチをARMにし、AGENT DISCH押しボタンを2秒以上押す。押しボタンが火工品点火制御器（PIC）を作動させ、ボトルの火工弁が開いてHalonがベイへ放出される（SCOM 2.2節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118） |
| F-ECL-FDS-FIX-03 | FIRE SUPPRESSION AV BAY 1（2、3）のSAFE/ARMスイッチは、主母線B（C、A）からの電力をAGENT DISCH押しボタンとボトルのPICのアーム回路へ入切りする（C&W訓練マニュアル表3-1）。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=39） |
| F-ECL-FDS-FIX-04 | ARMでカバー付きのAGENT DISCH押しボタンに電力が加わり、押した後1秒の時間遅れで誤放出を防いでから主母線の電力がPICへ送られる（C&W訓練マニュアル3.3.3.4節）。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=35） |
| F-ECL-FDS-FIX-05 | ボトルのノズル組立は1.5 inノズル・PIC・ばね・中空円筒形の刃から成り、PICの爆発でばねが刃を容器の隔膜に打ち込んで破り、Halonを放出する。放出前の圧力は65°Fで185 psigである（C&W訓練マニュアル3.3.3.5節）。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=35） |
| F-ECL-FDS-FIX-06 | ボトル圧力が60±10 psigを下回るとAGENT DISCH灯が点灯し、ボトルが放出されたことを示す（SCOM 2.2節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/119） |
| F-ECL-FDS-FIX-07 | 放出でベイ内のHalon濃度は7.5〜9.5%になり、消火に必要な濃度は4〜5%である。携帯消火器をベイに放出した場合は6〜7%になる（C&W訓練マニュアル3.3.3.4節）。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=35） |
| F-ECL-FDS-FIX-08 | ベイのHalonはベイファンが運転していても50時間有効である。放出時には感知器の濃度が約7,500 µg/m³に跳ね上がり、90〜120秒で火災による濃度の水準に戻る（C&W訓練マニュアル3.3.3.6節）。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=37） |
| F-ECL-FDS-FIX-09 | 放出時にはベイの圧力が一時的に約1 psia上がり、放出音は乗員に聞こえ、試験では最大143 dBに達した（C&W訓練マニュアル3.3.3.5節）。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=35） |
| F-ECL-FDS-FIX-10 | AGENT DISCH灯が放出音を伴わずに点灯した場合、または音を伴う点灯から50時間（冷却を強化しアクティブ冷却のペイロードを置いたベイ3Aは28時間）が経過した場合に、前部アビオニクスベイの消火を喪失とする（A17-3）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1918） |
| F-ECL-FDS-FIX-11 | 固定ボトルのHalon充填量は1.7 kg、放出時間は1秒である（Friedman・Dietrich、1991年）。（出典: https://ntrs.nasa.gov/api/citations/19910011869/downloads/19910011869.pdf#page=12） |
| F-ECL-FDS-FIX-12 | IOAのFMEA/CIL評価（1988年）は、ベイの消火ボトルの回路が単一系統であることを重視し、主ボトルが放出できないとき上昇・再突入中は携帯消火器で代替できない点を懸念とした。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=71） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-FDS-08 | ベイ空冷：ベイ内循環・機器空冷 | 推進薬・流体 | 送信 | AGENT DISCHでPICがボトルの火工弁を作動させ、Halon 1301をアビオニクスベイへ放出する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118）放出でベイ内のHalon濃度は7.5〜9.5%になり、消火には4〜5%が必要である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/119） | 上位: IF-ARS-15 |
| IF-FDS-09 | DPS・アビオニクス | データ・指令 | 送信 | 煙検知系と遠隔消火系の各種パラメータはテレメトリへ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/123）MCCはボトルが空になったことは分かるが、漏れの始まりや放出の時刻は分からない（A17-54A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1928） | 上位: IF-ECL-18 |
| IF-FDS-10 | 電力系：直流配電（EPDC-DC） | 電力（28 VDC） | 受信 | 各ベイのボトルのPICには、FIRE SUPPR BAY 1（主母線B、O15）・BAY 2（主母線C、O16）・BAY 3（主母線A、O14）の遮断器から電力を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/121）ARMでAGENT DISCH押しボタンに電力が加わり、押すと1秒の時間遅れの後に主母線の電力がPICへ送られる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=35） | 上位: IF-ECL-40 |
| IF-FDS-13 | 火災対応・運用管理 | データ・指令 | 受信 | ベイの火災を確認したら、そのベイのHalonボトルを放出し、ベイファンを止める（A17-53A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1923） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| FD-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.2節（PDF p118〜119）：ベイ1・2・3Aの固定ボトル（Halon 3.74〜3.8 lb）の放出操作（ARM、AGENT DISCHを2秒以上）と、ベイ内濃度7.5〜9.5%・約72時間の防護、60±10 psigでのAGENT DISCH灯の点灯を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/119） |
| FD-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-3（PDF p1918）：AGENT DISCHARGE灯が音を伴わずに点灯した場合と、放出後50時間（条件付きでベイ3Aは28時間）で前部アビオニクスベイの消火を喪失とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1918） |
| FD-06 | 番号なし | Shuttle Reference: Smoke Detection and Fire Suppression | 3つのアビオニクスベイの固定消火ボトルと、L1でのアームと2秒以上の放出ボタンの操作を解説する。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/cw/smokedet.html） |
| FD-07 | NTRS 19910011869 | Fire Suppression in Human-Crew Spacecraft（1991年） | 図3（PDF p12）：固定消火器（Halon 1.7 kg、放出1秒）の構造（点火器・刃・隔膜・圧力スイッチ）を示す。（出典: https://ntrs.nasa.gov/api/citations/19910011869/downloads/19910011869.pdf#page=12） |
| FD-12 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 3.3.3.3〜3.3.3.6節（PDF p30〜37）：固定ボトルの放出操作（1秒の時間遅れ）、ノズル組立の構造、ベイ内濃度7.5〜9.5%、放出時の濃度の跳ね上がりと50時間の有効時間を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=35） |
| FD-17 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 3.4.6.5節（PDF p225）：消火ボトル（Freon Tank）の最高使用温度を超えると過圧で破裂しうるとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=225） |
| FD-18 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | 付録C.12（PDF p71）：SD/FSの評価の主な結論として、ベイの消火ボトルの回路が単一系統で、上昇・再突入中は携帯消火器で代替できない点を挙げる。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=71） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：放出音は、SCOM（PDF p118）が約130 dB、C&W訓練マニュアル（p35）が最大143 dB、運用飛行規則A17-54Aが140 dBとする。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=35）

> **注記** 検証メモ：ベイ内のHalonが消火に必要な濃度を保つ時間を、SCOM（PDF p119）は約72時間、C&W訓練マニュアル（p37）と運用飛行規則A17-3は50時間（ベイ3Aの条件付きで28時間）とする。本書は運用飛行規則の値を用いた。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1918）

> **注記** 検証メモ：放出前のボトル圧力を、C&W訓練マニュアルの本文（PDF p35）は65°Fで185 psig、図3-4（p27）は70°Fで200 psiaとする。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=27）

> **注記** SODB（3.4.6.5節）は、消火ボトル（Freon Tank）と携帯消火器にも最高使用温度の制限を設け、超えると過圧で破裂するおそれがあるとする。抽出テキストでは表が崩れているため、数値は記さない。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=225）

## 6. 参考文献

1. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Smoke Detection（PDF p118） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118
2. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 表3-1 Displays and controls（Panel L1）（PDF p39） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=39
3. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 3.3.3.4〜3.3.3.5節 Fire Bottle Discharge Procedure・Operation（PDF p35） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=35
4. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Smoke Detection（続き）（PDF p119） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/119
5. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 3.3.3節 Fire Suppression（PDF p37） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=37
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-3 Forward Avionics Bay Fire Suppression（PDF p1918） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1918
7. NASA TM-104334 Fire Suppression in Human-Crew Spacecraft（Friedman・Dietrich、1991年） 図3 Shuttle Halon 1301 fire extinguishers（PDF p12） — https://ntrs.nasa.gov/api/citations/19910011869/downloads/19910011869.pdf#page=12
8. NASA-CR-185550 Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（McDonnell Douglas、1988年） 付録C.12節 LSS・ALSS の評価（SD/FS）（PDF p71） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=71
9. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Smoke Detection Circuit Test（PDF p123） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/123
10. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-54 Management Following Halon Discharge without Fire Confirmation（PDF p1928） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1928
11. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Fire and Smoke Subsystem Control Circuit Breakers・携帯消火器（PDF p121） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/121
12. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-53 Fire and Post-Fire Actions（PDF p1923） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1923
13. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 図3-4 Avionics bay fire suppression and circuit test system（PDF p27） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=27
14. JSC-08934 Vol. 1 Rev. E Shuttle Operational Data Book – Shuttle Systems Performance and Constraints Data（1988年） 3.4.6.5節 Smoke Detection and Fire Suppression Subsystem（PDF p225） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=225

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-01 | IF-FDS-10 の上位を IF-ECL-40 に付け替え（Rev. M） |
