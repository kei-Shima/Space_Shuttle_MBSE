# 酸素供給・分配（O2S）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-PCS-O2S-001 |
| 表題 | 酸素供給・分配（O2S）機能説明書 |
| 版・日付 | Rev. A／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-PCS-001 |
| 関連図 | SSD-SYS-ARC-001 図18 圧力制御系 機能構成 |

## 1. 目的

PRSDの極低温酸素をO2供給弁とフレオンで加温するO2リストリクタを通して乗員室へ導き、O2クロスオーバマニホールドから打上げ・帰還用ヘルメット、直接O2弁、エアロックのEMU用O2、100 psigのO2レギュレータを経たO2/N2マニホールドへ分配する機能を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-PCS-O2S-01 | PRSDは燃料電池と同じ極低温タンクからPCSへ酸素を供給し、タンクのヒータで811〜875 psiaに保たれた酸素は、電源を失ってもその位置に留まるラッチ式電磁弁のO2供給弁からPCSに入る（訓練マニュアル2.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=21） |
| F-ECL-PCS-O2S-02 | O2供給弁の下流のO2リストリクタは、過大な需要で燃料電池の極低温系の圧力が下がるのを防ぎ、系統1は23.9±1 lb/hrのリストリクタ1個、系統2は12.0±0.5 lb/hrのリストリクタ2個を並列に持つ。フレオンループ1が系統1、ループ2が系統2の酸素を加温する（訓練マニュアル2.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=21） |
| F-ECL-PCS-O2S-03 | L2のATM PRESS CONTROL O2 SYS 1・2 SUPPLYスイッチで供給弁を開くと、酸素は最大約25 lb/hrでリストリクタを流れ、リストリクタはフレオン冷却ループとの熱交換器として酸素を温める（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/361） |
| F-ECL-PCS-O2S-04 | 酸素配管は576隔壁を貫いて乗員室に入り、逆止弁の下流で系統1・2がO2クロスオーバ管でつながり、クロスオーバマニホールドがLEHレギュレータ、直接O2弁、エアロックのEMU用O2配管に酸素を送る（訓練マニュアル2.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=21） |
| F-ECL-PCS-O2S-05 | O2クロスオーバ弁は電源を失うと閉じる電磁弁で、並列の2個のLEHレギュレータが約840 psiaの酸素を100 psigに下げ、C7の2個のLEHレギュレータ入口弁が使わないときにレギュレータを隔離する（訓練マニュアル2.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=23） |
| F-ECL-PCS-O2S-06 | 打上げ・帰還時は、打上げ・帰還用与圧服（LES）のO2ホースをC6、MO32M、MO69MのLEHクイックディスコネクトにつないでLEH O2弁を開き、C5の直接O2弁はミッドデッキへ約20 lb/hrの酸素を流す（訓練マニュアル2.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=23） |
| F-ECL-PCS-O2S-07 | O2レギュレータ入口弁を開くと、100 psigのO2レギュレータが酸素を100 psiaに下げて逆止弁からO2/N2マニホールドへ送り、レギュレータの逃し弁は245 psigで開いて215 psigで閉じ、乗員室へ逃がす（訓練マニュアル2.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=23） |
| F-ECL-PCS-O2S-08 | エアロックのEMU用O2供給弁は、EMUの補給とISSへの酸素移送のために高圧の酸素をエアロックへ送る（訓練マニュアル2.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=23） |
| F-ECL-PCS-O2S-09 | 非常用O2キットはすべてのオービタから外されて配管はキャップで閉じられ、手動・自動の非常用O2弁は閉じたままとする（訓練マニュアル2.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=23） |
| F-ECL-PCS-O2S-10 | 軌道上の代謝用の酸素は、MO69MのLEH O2 8のクイックディスコネクトに差し込むブリードオリフィスから補給し、オリフィスは4〜5人の乗員で0.24 lbm/hr、6〜7人で0.36 lbm/hrを流す寸法とする（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/362） |
| F-ECL-PCS-O2S-11 | 打上げ・帰還用ヘルメット（LEH）は軌道上の非常呼吸ではオービタの酸素につなぎ、LEH O2の出口は8個しかないため、8人搭乗の飛行では予備の出口としてT弁を搭載する（1987年の飛行運用マニュアル3.6節）。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=157） |
| F-ECL-PCS-O2S-12 | O2クロスオーバ弁が閉じたまま開かない場合は、MO10WとC7の間にO2連絡ホースをつないで故障した弁を迂回し、2系統からの供給を回復するIFMがある（IFM O-12）。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=264） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-EPS-04 | 反応剤貯蔵・分配（PRSD） | 推進薬・流体 | 受信 | 酸素弁モジュールは、ECLSSの大気圧力制御系1・2への酸素供給を含む。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） | 上位: IF-ECL-01 |
| IF-TCS-04 | 熱交換器・コールドプレート網 | 熱 | 受信 | フレオンの一方の流路はECLSS酸素リストリクタを通り、ECLSS用のPRSD酸素を40°Fに加温する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | 上位: IF-ECL-24 |
| IF-PCS-01 | O2/N2マニホールド・PPO2制御 | 推進薬・流体 | 送信 | O2レギュレータ入口弁を開くと、100 psigのO2レギュレータが酸素を100 psiaに下げ、逆止弁を通してO2/N2マニホールドへ送る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=23）O2/N2制御弁が閉じているときは、マニホールドの圧力が100 psiを下回ると酸素が流れ込んで補給する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=28） | — |
| IF-PCS-04 | 乗員室（制御対象） | 推進薬・流体 | 送信 | O2クロスオーバマニホールドから、C6・MO32M・MO69MのLEHクイックディスコネクトを通してLESのヘルメットへ呼吸用酸素を送り、直接O2弁からはミッドデッキへ約20 lb/hrの酸素を流す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=23）軌道上はLEH O2 8のクイックディスコネクトに差し込んだブリードオリフィスから、代謝分の酸素を乗員室へ流す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/362） | 上位: IF-ECL-02 |
| IF-PCS-05 | エアロック支援系：EMU補給・支援 | 推進薬・流体 | 送信 | エアロックのEMU用O2供給弁は、EMUの補給とISSへの酸素移送のために、O2クロスオーバマニホールドの高圧の酸素をエアロックへ送る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=23） | 上位: IF-ECL-04 |
| IF-PCS-11 | 計測・表示・警報 | 推進薬・流体 | 送信 | 系統1・2の酸素系でO2流量（0〜5 lbm/hr）とO2レギュレータ圧（REG P）を計測し、SM SPEC 66に表示する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=42） | — |
| IF-PCS-17 | 与圧運用管理 | データ・指令 | 受信 | PPO2が3.20 psia未満なら飛行1日目の就寝前にO2ブリードオリフィスをLEHのクイックディスコネクトに取り付け、帰還日の軌道離脱準備で外す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1971）直接O2弁の流れは、10.2 psiaの乗員室の維持といくつかの故障への対処に使う。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=33） | — |
| IF-PCS-19 | 電力系（EPS） | 電力（28 VDC） | 受信 | O14のMNA O2 XOVR 1遮断器が、L2のSYS 1 O2 XOVRスイッチに主母線Aの電力を供給する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=52）O2クロスオーバ弁はCLOSE位置では通電されない。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=50） | 上位: IF-ECL-42 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| PC-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 2.1節（PDF p21〜23）：O2供給弁、フレオンで加温するO2リストリクタ（系統1は23.9 lb/hr、系統2は12.0 lb/hr×2）、O2クロスオーバマニホールド、LEHレギュレータ、直接O2弁、エアロックのEMU用O2、100 psigのO2レギュレータを解説する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=21） |
| PC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節 Oxygen System（PDF p361〜362）：O2供給弁と最大約25 lb/hrのリストリクタ、通常開のクロスオーバ弁、100±10 psigのO2レギュレータ、LEH O2 8に差し込むブリードオリフィス（0.24／0.36 lbm/hr）を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/361） |
| PC-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-206（PDF p1963）：O2クロスオーバ弁・O2供給弁が開かないなどの閉塞でLES O2供給系の1系統を喪失とみなすと定め、1系統（24 lbm/hr）では5〜8人の呼吸を賄えないとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1963） |
| PC-10 | 番号なし | NSTS 1988 News Reference Manual – Airlock Support | SCU接続時にオービタの酸素系から900±500 psiaの酸素をエアロック盤AW82Bを通じて供給すると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-airlock.html） |
| PC-14 | NTRS 19900001602 | IOA: Analysis of the EPG/PRSD subsystem | 燃料電池とARPCSへ極低温の水素・酸素を貯蔵・分配するPRSDハードウェアの独立FMEA/CIL解析で、PCSへの酸素の供給元を扱う。（出典: https://ntrs.nasa.gov/citations/19900001602） |
| PC-15 | 番号なし | Shuttle Reference: Crew Compartment Cabin Pressurization | PRSDの極低温超臨界酸素が、気体として835〜852 psiaで与圧系へ供給されると記す。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/cabinpress.html） |
| PC-18 | SCOM 2.9節（抜粋） | Environmental Control and Life Support System（NASA-KLASS教材） | 打上げ・帰還用スーツのヘルメットと非常用呼吸マスクへ、呼吸用の酸素を直接供給すると記す。（出典: http://www.nasa-klass.com/Curriculum/Get_Training%201/ECLSS/RDG_ECLSS-Additional/RDG_ECLSS-SubSys_Advanced.pdf） |
| PC-19 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | PCSの酸素をPRSDから受けることを記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| PC-23 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.1.2節（PDF p11）：PRSDの酸素をヒータで835〜852 psiaに保ち、O2リストリクタの最大流量を10 lb/hrとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=11） |
| PC-24 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 3.6節（PDF p157）：軌道上の非常呼吸ではLEHをオービタの酸素につなぎ、LEH O2の出口は8個で、8人搭乗の飛行ではT弁を搭載すると示す。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=157） |
| PC-25 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | O-12（PDF p264）：閉じたまま開かないO2クロスオーバ弁を、MO10WとC7の間につなぐO2連絡ホースで迂回する手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=264） |
| PC-28 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | C.16節（PDF p77）：FMEAがLEHパネルを非常用システムとして扱った点に、IOAが留保を付けて同意したと記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=77） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：PRSDから受ける酸素の圧力は資料で異なる。訓練マニュアル（PDF p21）は811〜875 psia（2.8節の運用範囲は811〜875 psig）、SCOM（PDF p360）は803〜883 psia、1979年の飛行運用マニュアル（PDF p11）と親文書のF-ECL-PCS-08は835〜852 psiaとする。本書は訓練マニュアルの値を用いた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360）

> **注記** 検証メモ：O2リストリクタの流量を、訓練マニュアル（2.1節）は系統1が23.9±1 lb/hr、系統2が12.0±0.5 lb/hrの2個並列、SCOM（PDF p361）は最大約25 lb/hr、1979年の飛行運用マニュアル（PDF p11）は最大10 lb/hrとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=11）

> **注記** 図18では、PRSDからの供給（IF-EPS-04）とフレオンによるO2リストリクタでの加温（IF-TCS-04）を、図6・図8の下位IFのまま示した（同じ物理IFのため新しい番号を作らない）。訓練マニュアル1.1節もPCSのインタフェースとしてPRSDとATCSを挙げる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=16）

> **注記** 1988年のIOA評価は、FMEAがLEHパネルを非常用システムとして扱い、LEHが使えなくなる故障を人命・機体の喪失につながるとした点に、留保を付けて同意した（IOA中間報告C.16節）。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=77）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.0節 Pressure Control System・2.1節 Oxygen System（PDF p21） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=21
2. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Oxygen System（PDF p361） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/361
3. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.1節 Oxygen System・2.2節 Nitrogen System（PDF p23） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=23
4. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Oxygen System（続き）（PDF p362） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/362
5. JSC-12770 Vol. 12 Basic Rev. B Shuttle Flight Operations Manual – Crew Systems（1987年） 3.6節 Emergency Breathing Provisions（PDF p157） — https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=157
6. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist O-12 O2 SYS 1(2), Failed XOVR VLV Bypass（PDF p264） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=264
7. NSTS 1988 News Reference Manual – Electrical Power System（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eps.html
8. NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html
9. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.3.1〜2.3.2節 O2/N2 Control Valve Manually Open・Closed（PDF p28） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=28
10. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 図2-16 PASS SM SPEC 66（PDF p42） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=42
11. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-256 O2 Bleed Orifice Management・A17-257 N2 System Management（PDF p1971） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1971
12. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.5節 Pressure Control System Controls（PDF p33） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=33
13. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表2-1 ECLSS pressurization controls（続き、O14・O15の遮断器）（PDF p52） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=52
14. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表2-1 ECLSS pressurization controls（続き）（PDF p50） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=50
15. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Pressure Control System（PDF p360） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360
16. JSC-12770 Vol. 3 Shuttle Flight Operations Manual – Environmental Control and Life Support Systems（1979年） 2.1.1〜2.1.2節 Pressurization System Interfaces・Description（PDF p11） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=11
17. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 1.1節 Pressure Control System Interfaces（PDF p16） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=16
18. NASA-CR-185550 Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） C.16節（続き）（PDF p77） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=77

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-01 | IF-PCS-19 の上位を IF-ECL-42 に付け替え（Rev. M） |
