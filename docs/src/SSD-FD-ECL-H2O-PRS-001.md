# タンク加圧（PRS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-H2O-PRS-001 |
| 表題 | タンク加圧（PRS）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-H2O-001 |
| 関連図 | SSD-SYS-ARC-001 図20 給水・廃水系 機能構成 |

## 1. 目的

PCSの水タンク用N2レギュレータで15.5〜17.0 psigに下げた窒素を受け、共通のN2マニホールドから給水タンクのベローズと廃水タンクを加圧して水を送り出す機能と、打上げ時のタンクAのベント、代替加圧、漏れ時の減圧を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-H2O-PRS-01 | 給水・廃水タンクは通常PCSの窒素で加圧され、窒素圧は乗員室圧より15.5〜17.0 psi高く保たれて、水を系統へ送る力となる（訓練マニュアル5.3節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=150） |
| F-ECL-H2O-PRS-02 | PCS系統1・2の200 psigの窒素は水タンク用N2レギュレータ（流量1 lb/hrに制限）で15.5〜17.0 psigに下げられ、H2O TK N2隔離弁を通って共通のH2O TK N2マニホールドへ入り、廃水タンクと給水タンクのベローズを加圧する。過圧は18.5±1.5 psigで乗員室へ逃がすリリーフ弁が防ぐ（訓練マニュアル5.3節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=150） |
| F-ECL-H2O-PRS-03 | 窒素系統1・2はそれぞれ単独で水タンクを加圧でき、パネルMO10WのH2O TK N2 REG INLETとH2O TK N2 ISOLの手動弁で制御し、窒素と水は金属のベローズで分けられる（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/395） |
| F-ECL-H2O-PRS-04 | 打上げ時はタンクAを乗員室へベントする。機体の姿勢と加速度が生成水の流入を妨げ、窒素で加圧したままだと生成水が船外へ逃げ、その経路が故障すれば燃料電池が浸水して発電が止まるためである（訓練マニュアル5.3節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=150） |
| F-ECL-H2O-PRS-05 | パネルML26CのSUPPLY H2O GN2 TK A SPLY弁とTK VENT弁（いずれも2位置の手動弁）で、タンクAを加圧マニホールドから切り離して乗員室へベントする（訓練マニュアル5.5節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=153） |
| F-ECL-H2O-PRS-06 | タンクAの弁は、タンクAの量が98（93）%に達する前とタンクBが空になる前に開・加圧の位置へ戻す。満量前に加圧しないとベローズ前後の差圧が15 psidを超えて損傷しうる（運用飛行規則A18-54）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2046） |
| F-ECL-H2O-PRS-07 | タンクA供給弁を開いてベント弁をベント位置にすると全タンクを乗員室圧にでき、漏れが乗員室内なら窒素圧を抜けば漏れが止まる。水の代替加圧弁はマニホールドを乗員室へベントする予備の手段にもなる（訓練マニュアル5.3節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=151） |
| F-ECL-H2O-PRS-08 | 窒素系統1・2がどちらも使えない場合は、パネルL1のH2O ALTERNATE PRESSスイッチを開にして乗員室の圧力を水タンクに加える。通常は閉じて、与圧系と水タンクの加圧系を切り離す（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/396） |
| F-ECL-H2O-PRS-09 | 代替加圧弁は飛行中は通常閉じる。開くと水系の圧力が乗員室圧まで下がるため、非常時にだけ使う（運用飛行規則A17-501）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1993） |
| F-ECL-H2O-PRS-10 | 水タンクのN2圧が13.0 psig未満でSMアラートが出ると、故障処置手順6.2iでレギュレータやセンサの故障、N2の漏れを切り分け、再加圧でFESが停止しないようFES制御器を切る（MAL 6.2i）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=283） |
| F-ECL-H2O-PRS-11 | 湿度分離器の漏水などで水タンクを減圧している場合は、ダンプの約30分前から再加圧してダンプ時間を短くし、ダンプ後に再び減圧する（MAL ECLS SSR-17）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=358） |
| F-ECL-H2O-PRS-12 | 廃水タンクにかかわる隔離できない窒素漏れでは水加圧系への窒素供給を止め、IFMで廃水タンクを切り離してから残りを通常の圧力に戻す。FESは低い系統圧で不調になることがあるためである（A17-506C）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1999） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-PCS-06 | 圧力制御系：窒素供給 | 推進薬・流体 | 受信 | 水タンク用N2レギュレータ入口弁を開くと窒素がレギュレータとH2O TK N2 ISOL弁へ流れ、レギュレータは200 psiの窒素を15.5〜17.0 psigに下げる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369）給水・廃水タンクは17 psigに加圧され、乗員の使用、船外ダンプ、FESへの給水に必要な圧力で水を押し出す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/361） | 上位: IF-ECL-03 |
| IF-H2O-13 | 給水貯蔵・分配 | 推進薬・流体 | 送信 | 共通のH2O TK N2マニホールドから給水タンク4基のベローズを加圧し、水を系統へ押し出す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=150）打上げ時はタンクA供給弁を閉じてベント弁を開き、タンクAだけを乗員室圧にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/395） | — |
| IF-H2O-14 | 廃水貯蔵 | 推進薬・流体 | 送信 | 同じN2マニホールドから廃水タンクを加圧する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/401） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| WA-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 5.3節（PDF p150〜151）：窒素を15.5〜17.0 psigに下げるレギュレータ（1 lb/hr）とリリーフ弁（18.5±1.5 psig）、打上げ時のタンクAのベント、漏れ時の減圧、代替加圧弁を解説する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=150） |
| WA-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p395〜396）：窒素系統1・2による15.5〜17.0 psigの加圧とリリーフ弁、打上げ時のタンクAの減圧、H2O ALTERNATE PRESSスイッチによる代替加圧を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/395） |
| WA-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A18-54（PDF p2046）とA17-501（p1993）：打上げ時のタンクAのベントと再加圧の時期、代替加圧弁を通常閉とすることを定め、A17-506C（p1999）で窒素漏れ時の処置を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2046） |
| WA-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.2i H2O TK N2 P↓（PDF p283〜284）とSSR-17（p358）：水タンクN2圧の低下の切り分けと、水タンクの再加圧・減圧の手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=283） |
| WA-10 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS | 窒素系統1・2のいずれかで各タンクを16 psigの窒素で加圧すると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| WA-12 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.4.2節（PDF p79〜80）：水タンクを窒素で16.0 psigに加圧し、タンクAの隔離弁とベント弁が連動すると示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=79） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：水タンクの加圧の値は資料で異なる。SCOM 2.9節の給水系（PDF p395）と訓練マニュアル（5.3節）は15.5〜17.0 psig、SCOMのPCSの節（PDF p361）は17 psig、1979年の飛行運用マニュアルは16.0 psig、親文書のIF-ECL-03（1988年版マニュアル）は16 psigとする。本書は15.5〜17.0 psigを用いた。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=79）

> **注記** CRT表示の「H2O TK N2 P」は実際にはレギュレータの出口圧（H2O REG 1(2) P）であり、SPEC 66の給水圧（psia）と廃水圧（psig）が予備の計測となる（MAL 6.2i）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=283）

> **注記** 水タンク用N2レギュレータとパネルMO10Wの入口弁・隔離弁は、SCOMに従いPCSの窒素供給系の機器として扱った（SSD-FD-ECL-PCS-N2S-001）。窒素の受入れは図18のIF-PCS-06をそのまま用いた（同じ物理IFのため新しい番号を作らない）。IF-PCS-06の上位IFはIF-ECL-03である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/395）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 5.3節 Supply and Wastewater Pressurization System（PDF p150） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=150
2. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Supply Water System（続き）（PDF p395） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/395
3. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 5.5節 Supply and Wastewater System Controls（続き）（PDF p153） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=153
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-54 Supply Water Tank A Pressure Control Management（PDF p2046） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2046
5. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 5.3節 Supply and Wastewater Pressurization System（続き）（PDF p151） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=151
6. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Alternate Water Pressurization（PDF p396） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/396
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-501 Alternate Pressure Valve Management・A17-502 Waste Dump Nozzle Ice Formation（PDF p1993） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1993
8. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.2i H2O TK N2 P（PDF p283） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=283
9. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS SSR-17 Water Tank Repress/Depress（PDF p358） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=358
10. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-506 Waste Water System Leak Management（続き）（PDF p1999） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1999
11. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Water Tank Regulator Inlet Valve（PDF p369） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369
12. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Pressure Control System（PDF p361） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/361
13. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Galley Water Supply・Waste Water System（PDF p401） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/401
14. JSC-12770 Vol. 3 Shuttle Flight Operations Manual – Environmental Control and Life Support Systems（1979年） 2.4.2節 Supply and Waste Water Management System Description（続き）（PDF p79） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=79

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
