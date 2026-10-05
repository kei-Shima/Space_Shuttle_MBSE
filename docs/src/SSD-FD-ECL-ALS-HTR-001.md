# 配管・構造ヒータ（HTR）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-ALS-HTR-001 |
| 表題 | 配管・構造ヒータ（HTR）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-ALS-001 |
| 関連図 | SSD-SYS-ARC-001 図24 エアロック支援系 機能構成 |

## 1. 目的

与圧区画の外を通る6本の水配管と、エアロック外殻・ベスティビュールをヒータで加温し、EMU補給・ISSへの給水の配管の凍結とエアロック内の結露を防ぐ機能と、ヒータの運用・喪失時の管理を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-ALS-HTR-01 | 与圧区画の外を通る6本の水配管（EMU 1・2のLCG供給・戻り各1本、飲料水供給1本、廃水戻り1本）はQDパネルで2区域に分かれ、各配管に3系統のヒータ（1系統ずつ使用）を巻き、区域ごとのサーモスタットで6本のヒータをまとめて入切りする（訓練マニュアル6.5節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=179） |
| F-ECL-ALS-HTR-02 | エアロック外殻の3区域（上部隔壁の前・後半分と下部隔壁のキール金具）の構造パッチヒータは、特に真空時にエアロック内部を氷点以上に保って内部の水配管の凍結を防ぎ、壁・ハッチとドッキング用アビオニクスベイの結露も防ぐ。構造ヒータは二重冗長である（訓練マニュアル6.5節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=180） |
| F-ECL-ALS-HTR-03 | ベスティビュールヒータはドッキング機構の一部でECLSSには含まれないが、構造ヒータと同じ形式の二重冗長・3区域のヒータである。すべてのヒータはパネルML86Bの遮断器で操作する（訓練マニュアル6.5節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=180） |
| F-ECL-ALS-HTR-04 | 各ヒータ系統（水配管・構造・ベスティビュール）は単独で熱調整できるため1系統ずつ運転し、軌道投入後に主母線AのMNA系統を入れ、飛行中盤のヒータ再構成でMNB系統に切り替え、MNCの水配管ヒータは通常使わない（訓練マニュアル6.9.2節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=191） |
| F-ECL-ALS-HTR-05 | 外部エアロックの構造・水配管ヒータは、打上げ前はペイロードベイの熱調整で不要なため入れず、軌道上でできるだけ早く入れる（A18-301）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2093） |
| F-ECL-ALS-HTR-06 | 軌道上のヒータ再構成（CONFIG B）では、パネルML86BのMNAの外部エアロックヒータ（配管区域1・2と構造区域1〜3）の遮断器を開き、MNBの遮断器を閉じる（Orbit Ops Checklist 6-5）。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=179） |
| F-ECL-ALS-HTR-07 | 外部エアロックの水配管は、区域1・2のいずれかで配管温度を32°F（40°F）超に保てない場合に喪失とみなす（A18-60A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2055） |
| F-ECL-ALS-HTR-08 | EVA中でダクトを外している間は、エアロック内部の能動的な熱制御は構造ヒータだけで、機体姿勢によってはヒータ区域の故障で水配管が凍るおそれがある（A18-60B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2056） |
| F-ECL-ALS-HTR-09 | EVA中は上部・後部ハッチの断熱カバーを閉じておき、開いた場合はEVA乗員がエアロックに戻って閉じる。カバーとハッチが開くと、深宇宙を見る内部の水配管が構造より速く冷えて凍るおそれがある（A15-201）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1869） |
| F-ECL-ALS-HTR-10 | 冗長のヒータ系統の計測を失った場合は両系統を同時に運転し、水配管ヒータは3系統のうち2系統を使う（A18-304）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2095） |
| F-ECL-ALS-HTR-11 | 水配管ヒータまたは構造ヒータを失った場合は、機体姿勢の管理で外部エアロック内外の水配管の凍結を防ぐ。水配管を失うとEMU補給とISSへの給水移送の能力を失う（A18-306）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2096） |
| F-ECL-ALS-HTR-12 | SMのEXT A/L H2O LN T警報では、温度の変化からヒータの電源喪失やサーモスタットの開故障・閉故障を切り分け、代わりのヒータ電源・系統に切り替える（MAL 6.7a）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=328） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ALS-08 | 電力系（EPS） | 電力（28 VDC） | 受信 | パネルML86Bの遮断器から、主母線（MNAほか）の電力を外部エアロックの水配管ヒータ（区域1・2）、構造ヒータ（区域1〜3）、ベスティビュールヒータへ系統ごとに供給する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=193）通常は軌道投入後にMNA系統を入れ、飛行中盤のヒータ再構成でMNB系統に切り替え、MNCの水配管ヒータは通常使わない。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=191） | 上位: IF-ECL-16 |
| IF-ALS-13 | 計測・表示 | 熱 | 送信 | 水配管の区域1・2に2個ずつの温度トランスデューサがあり、流れのないときの6本の配管の温度を代表するよう配置されている。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2055）構造温度センサはヒータのサーモスタットの作動を監視する位置にあり、構造や空気の実際の温度は測らない。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=187） | — |
| IF-ALS-14 | 液冷服冷却ループ | 熱 | 送信 | LCG供給・戻り配管（EMUごとに1組）は与圧区画の外を通り、区域ごとに各配管に巻いた3系統のヒータで加温する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=179）LCVG配管の2区域のサーモスタット制御ヒータが凍結を防ぐ。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=176） | — |
| IF-ALS-15 | EMU補給・支援 | 熱 | 送信 | EMU給水（ISS移送兼用）の飲料水供給配管と廃水戻り配管は与圧区画の外を通り、区域ごとに各配管に巻いた3系統のヒータで加温する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=179）ペイロードベイ内の給水・廃水配管は3重冗長のヒータで熱調整される。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=176） | — |
| IF-ALS-16 | 区画・減圧・再与圧 | 熱 | 送信 | エアロック外殻の3区域の構造パッチヒータが、特に真空時にエアロック内部を氷点以上に保ち、壁・ハッチとドッキング用アビオニクスベイの結露を防ぐ。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=180） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| AL-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 6.5節（PDF p179〜180）と6.9.2節（p191）：6本の水配管の2区域・3系統のヒータ、外殻の3区域の構造ヒータ、ベスティビュールヒータ、ML86Bの遮断器とMNA・MNBの切替え運用を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=179） |
| AL-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 5.2節（PDF p828）：軌道投入後の作業でエアロックのヒータを入れると示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/828） |
| AL-03 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.6.4節 Airlock Support Subsystem（PDF p224）：EVA中は断熱ハッチカバーを閉じておかないと、H2OパネルとEMUのSCUが凍るおそれがあるとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=224） |
| AL-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A15-201・A18-60・A18-301・A18-304・A18-306（PDF p1869・p2055〜2056・p2093〜2096）：ハッチ断熱カバー、水配管の喪失定義、ヒータを入れる時期、計測喪失時の両系統運転、ヒータ喪失時の姿勢管理を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2055） |
| AL-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ECLS 6.7a・6.7b（PDF p328〜329）：EXT A/L H2O LN T・EXT A/L STRUC Tの警報で、ヒータの電源喪失やサーモスタットの故障を切り分け、代わりの電源・系統に切り替える手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=328） |
| AL-16 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 6-5 HEATER RECONFIG（PDF p179）：軌道上のヒータ再構成で、ML86Bの外部エアロックヒータ（配管区域1・2と構造区域1〜3）の遮断器をMNAとMNBで入れ替える。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=179） |
| AL-18 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p30：飛行中の点検で外部エアロックの水配管ヒータをA系統からB系統へ切り替え、C系統は不要だったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=30） |
| AL-19 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p50：構造ヒータの全系統を飛行中監視して正常を確かめ、ベスティビュールヒータの点検はMNAだけで行ったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=50） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SODB（3.4.6.4節）も、EVA中は断熱ハッチカバーを閉じておかないとH2OパネルとEMUのSCUが凍るおそれがあるとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=224）

> **注記** STS-108では飛行中の点検として水配管ヒータをA系統からB系統へ切り替え、C系統は使わなかった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=30）

> **注記** STS-114では構造ヒータの全系統を飛行中監視して正常を確かめたが、ベスティビュールヒータの点検はMNAだけで行い、MNBでの点検は飛行後に回した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=50）

> **注記** 構造温度の警報（EXT A/L STRUC T）は、同じ構成の手順MAL 6.7bで処置する。ヒータ温度の計測と表示は計測・表示（MON）で扱い、IF-ALS-13で示した。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=258）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 図6-7 Airlock ductwork configuration・6.5節 Heaters（PDF p179） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=179
2. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 6.5節 Heaters（続き）・6.6節 Hatches（PDF p180） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=180
3. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 6.9節 Airlock Nominal Operation（PDF p191） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=191
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-301 TCS Heater Configuration（続き）（PDF p2093） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2093
5. JSC-48035 Rev. M PCN-10 Orbit Operations Checklist 6-5 Heater Reconfig（PDF p179） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=179
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-60 External Airlock Water Lines（PDF p2055） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2055
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-60 External Airlock Water Lines（続き）（PDF p2056） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2056
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-201 External Airlock Hatch Thermal Cover（PDF p1869） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1869
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-304 TCS Heater Operations for Loss of Instrumentation（PDF p2095） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2095
10. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-306 External Airlock Heater Loss Management（PDF p2096） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2096
11. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.7a EXT A/L H2O LN T（PDF p328） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=328
12. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表6-1 Airlock controls（続き）（PDF p193） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=193
13. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 6.8節 Airlock Instrumentation and Displays（PDF p187） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=187
14. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 6.3節 Air and Water Transfer（PDF p176） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=176
15. JSC-08934 Vol. 1 Rev. E Shuttle Operational Data Book – Shuttle Systems Performance and Constraints Data（1988年） 3.4.6.4節 Airlock Support Subsystem（PDF p224） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=224
16. NSTS-37436 STS-108 Space Shuttle Mission Report（2002年） Orbiter Docking System・ARPCS（PDF p30） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=30
17. JSC-63290 STS-114 Space Shuttle Mission Report（2006年） Airlock System（PDF p50） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=50
18. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6章 目次（PDF p258） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=258

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
