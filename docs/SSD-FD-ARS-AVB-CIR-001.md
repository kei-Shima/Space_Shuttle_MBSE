# ベイ内循環・機器空冷（CIR）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-AVB-CIR-001 |
| 表題 | ベイ内循環・機器空冷（CIR）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-AVB-001 |
| 関連図 | SSD-SYS-ARC-001 図32 アビオニクスベイ空冷 機能構成 |

## 1. 目的

各アビオニクスベイ（1・2・3A）の床から空冷機器と300ミクロンフィルタを通してベイファンへ空気を吸い込むベイ内の空気循環と、それによるGPC・インバータ分配組立・TACANなどの強制空冷、フィルタ清掃・ダクトの保守を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-AVB-CIR-01 | 微小重力では対流による冷却が起きないため、ベイファンがベイ内に空気を循環させ、連続した強制空冷で置き換える（訓練マニュアル3.2.7節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=65） |
| F-ARS-AVB-CIR-02 | ファンはベイの床から、該当する空冷機器と300ミクロンフィルタを通して空気を吸い込む（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| F-ARS-AVB-CIR-03 | 各ベイのクローズアウトカバーはベイと乗員室の間の空気の出入りと温度勾配を抑えるが気密ではなく、実質的にはベイ内の閉ループで空気が循環する（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| F-ARS-AVB-CIR-04 | 訓練マニュアルの表3-2〜3-5は、各ベイ（1・2・3A・3B）の機器を強制空冷・自由流空冷・水冷に分けて示し、Av Bay 3Bには空冷の機器がない。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=89） |
| F-ARS-AVB-CIR-05 | GPC 1・4はベイ1、GPC 2・5はベイ2、GPC 3はベイ3にあってベイファンで強制空冷され、ベイの両ファンが故障すると14.7 psiで25分、10.2 psiで17分以内に過熱する（SCOM 2.6節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/227） |
| F-ARS-AVB-CIR-06 | 運用飛行規則は、ベイ入口温度95°F以下という設計要求の下で各LRUが最高運用温度を超えないようにベイ内の気流が配分されているとし、軌道上ではGPCが最大の熱負荷で、各GPCがベイの気流の約3分の1に影響するとする（A17-105）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1935） |
| F-ARS-AVB-CIR-07 | SODBはアビオニクス機器に入る空気を95°F未満、機器の出口を130°F未満とすることを求め、ベイでGPCを1台追加して稼働させると計測される出口温度は約10〜15°F上がる（A18-205）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2070） |
| F-ARS-AVB-CIR-08 | 前方ベイ1〜3のインバータ分配組立は空冷である（SCOM 2.8節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340） |
| F-ARS-AVB-CIR-09 | 交流で動くGould製TACANは冷却を失うと5分以内に短絡しうることが示されており、ベイファンで冷却する必要がある（A9-154）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1467） |
| F-ARS-AVB-CIR-10 | ベイファンのフィルタ清掃はMCCの指示があるときだけ行い、ベイ1・2は収納区画Vol E（MD76C）、ベイ3AはVol G（MD80R）またはVol H（MD23R）を外して下部機器ベイからフィルタに近づく（IFM 4-9）。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=105） |
| F-ARS-AVB-CIR-11 | IOAのCIL評価（1988年）は、ベイ冷却用ダクト区間の流れの制限（ARS-2561X）の原因の一つを300ミクロンフィルタの目詰まり（ARS-234）とし、一次故障の影響として扱って指摘を取り下げた。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=135） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-FDS-01 | 煙検知・消火系：煙感知器 | 推進薬・流体 | 送信 | 各アビオニクスベイ（1・2・3A）の上部と下部の近くに煙感知器A・Bがあり、ベイ内を循環する空気を吸引して煙を検知する。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=23）ベイの両ファンが故障して空気が循環しない場合は、そのベイの煙検知を喪失とみなす（A17-2A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1917） | 上位: IF-ARS-15 |
| IF-FDS-08 | 煙検知・消火系：固定消火ボトル | 推進薬・流体 | 受信 | AGENT DISCHでPICがボトルの火工弁を作動させ、Halon 1301をアビオニクスベイへ放出する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118）放出でベイ内のHalon濃度は7.5〜9.5%になり、消火には4〜5%が必要である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/119） | 上位: IF-ARS-15 |
| IF-FDS-11 | 煙検知・消火系：携帯消火器 | 推進薬・流体 | 受信 | 携帯消火器はアビオニクスベイの火災では固定ボトルの予備で、ベイへ放出するとベイ内のHalon濃度は6〜7%になる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=35）煙検知を失ったベイでは、再突入のための機器の電源投入前に携帯のHalonボトルをそのベイへ放出する（A17-51A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1920） | 上位: IF-ARS-15 |
| IF-AVB-01 | ベイファン・逆止弁 | 推進薬・流体 | 送信 | ベイの床から空冷機器と300ミクロンフィルタを通した空気を、ベイファンの入口へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） | — |
| IF-AVB-02 | DPS・アビオニクス | 熱 | 送信 | GPC 1・4（ベイ1）、GPC 2・5（ベイ2）、GPC 3（ベイ3）は、ベイファンが循環させる空気で強制空冷される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/227）ベイファンを止めてよい時間は、GPCの冷却の制約から最大26分である（A18-501）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2127） | 上位: IF-ARS-17 |
| IF-AVB-03 | 電力系：交流配電（EPDC-AC） | 熱 | 送信 | 前方ベイ1〜3のインバータ分配組立は、ベイの空気で空冷される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340） | 上位: IF-ARS-18 |
| IF-AVB-04 | 誘導・航法・制御（GN&C） | 熱 | 送信 | 交流で動くGould製TACANはベイファンで冷却され、冷却を失うと5分以内に短絡しうる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1467）冷却を回復できない場合は、ベイ内のTACANとMLSを早急に断電する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=207） | 上位: IF-ARS-41 |
| IF-AVB-09 | ベイ熱交換器 | 推進薬・流体 | 受信 | ベイ熱交換器で水冷却ループにより冷やした空気を、ベイへ戻す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| AV-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 表3-2〜3-5（PDF p88〜89）：各ベイの機器を強制空冷・自由流空冷・水冷に分けて示し、3.2.7節（p65）でファンが機器の間に空気を通して強制空冷し、各ベイが気密でない閉じた循環系であるとする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=88） |
| AV-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.6節（PDF p227）でGPCがベイファンで強制空冷されるとし、2.8節（p340）でインバータ分配組立が空冷であること、2.9節（p376）でファンがベイの床から空冷機器と300ミクロンフィルタを通して吸い込むことを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/227） |
| AV-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-105（PDF p1934〜1936）：ベイ入口温度95°Fの設計要求に基づく各LRUへの気流の配分と、計測される出口温度がベイ内の全LRUの混合温度であることを述べ、A9-154（p1467）でGould製TACANの冷却にベイファンが必要とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1935） |
| AV-07 | NTRS 19750056784 | The shuttle orbiter cabin atmospheric revitalization systems | 1973年以降の設計変更として、アビオニクスベイのキャビンからの隔離の廃止を挙げる（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19750056784） |
| AV-11 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | ARS-2561X（C.13-33、PDF p135）とARS-234（C.13-15、p117）でベイ冷却用ダクト区間の流れの制限とその原因の一つである300ミクロンフィルタ（3個）の目詰まりを、ARS-2562X（C.13-34、p136）で戻り空気ダクト区間の外部漏れを扱い、いずれも指摘を取り下げたと記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=135） |
| AV-13 | NTRS 20090043801（JSC-CN-19306） | Noise Control in Space Shuttle Orbiter（Goodman、NOISE-CON 2010） | 3つのアビオニクスベイのクローズアウトに遮音材を追加し、1992年にAv Bay 3Aの大きなスロットなどへの蓋を承認したと記す。（出典: https://ntrs.nasa.gov/citations/20090043801） |
| AV-14 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.2節（PDF p37）：各ベイは閉じた空気循環系だが気密ではなく、一部の空気がベイと乗員室の間を行き来すると示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37） |
| AV-16 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | 4-2・4-9〜4-10 Filter Cleaning（PDF p98・p105〜106）：ベイファンのフィルタ清掃はMCCの指示があるときだけ行い、下部機器ベイからフィルタに近づき、ファンを20分を超えて止めると電子機器が過熱するおそれがあるとする。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=106） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：TACANの冷却は機体と時期で異なる。運用飛行規則A9-154（2002年）はGould製TACANをベイファンで冷やす必要があるとし、Av Bay 3Aに大型ファンを積む機体は自由空冷のCollins製TACANを持つとする（PDF p1468）。SCOM（PDF p484）は3台のTACANを受動冷却とする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/484）

> **注記** IMUファンはAv Bay 1にあるが（SCOM PDF p376）、乗員室の空気を吸い込んでIMUを冷やす別の循環系であり、IMU空冷（SSD-FD-ARS-IMU-001）で扱う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376）

> **注記** C&Wの電子装置はAv Bay 3Aにある（C&W訓練マニュアル4章）。運用飛行規則のGo/No-Go基準がAv Bay 3の冷却喪失をC&Wの冷却喪失としてPLSの対象とするのは、このためと考えられる（SSD-FD-ARS-AVB-OPS-001）。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=58）

> **注記** 1979年の飛行運用マニュアル（PDF p37）は一部の空気がベイと乗員室の間を行き来するとするが、図32ではこの空気の出入りをIFとして示さない（ARSの段にも対応するIFがない）。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37）

> **注記** ベイの煙感知器とHalonの放出は煙検知・消火系の機能として扱い、図32では図26のIF-FDS-01・08・11をそのまま示した（同じ物理IFのため新しい番号を作らない）。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=23）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.2.7節 Avionics Bay Fans（PDF p65） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=65
2. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Avionics Bay Cooling（PDF p376） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376
3. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-4・3-5 Av Bay 3A・3B equipment-cooling matrix（PDF p89） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=89
4. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.6節 General Purpose Computers（PDF p227） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/227
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-105 Avionics Bay Cooling（続き）（PDF p1935） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1935
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-205 FES Secondary Controller（PDF p2070） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2070
7. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.8節 Component Cooling（PDF p340） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-154 AC Load Management During Ascent（続き）（PDF p1467） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1467
9. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist 4-9 Filter Cleaning（Lower Equipment Bay）（PDF p105） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=105
10. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-33 ARS-2561X Duct Sections, Avionics Bay（PDF p135） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=135
11. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 3.3.2.1節 Smoke Detector Locations（PDF p23） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=23
12. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-2 Smoke Detection Loss Definition（PDF p1917） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1917
13. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Smoke Detection（PDF p118） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118
14. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Smoke Detection（続き）（PDF p119） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/119
15. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 3.3.3.4〜3.3.3.5節 Fire Bottle Discharge Procedure・Operation（PDF p35） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=35
16. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-51 Management Following Loss of Smoke Detection（続き）（PDF p1920） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1920
17. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-501 Maximum Off Time for Cooling Equipment（PDF p2127） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2127
18. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録B.6 Av Bay Failure Recognition（続き）（PDF p207） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=207
19. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.13節 TACAN（PDF p484） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/484
20. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 4章 C&W Electronics（PDF p58） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=58
21. JSC-12770 Vol. 3 Shuttle Flight Operations Manual – Environmental Control and Life Support Systems（1979年） 2.2.2節 ARS System Description（続き）（PDF p37） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
