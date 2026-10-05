# 煙警報・回路試験（ALM）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-FDS-ALM-001 |
| 表題 | 煙警報・回路試験（ALM）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-FDS-001 |
| 関連図 | SSD-SYS-ARC-001 図26 煙検知・消火系 機能構成 |

## 1. 目的

煙感知器のトリップ信号でパネルL1のSMOKE DETECTION灯を点灯させ、C&Wのサイレンとマスターアラームを起動し、警報のラッチ・リセットと回路試験を行う機能と、誤警報・表示回路の故障の切り分けを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-FDS-ALM-01 | 煙検知・消火の警報は急減圧とともにクラス1（緊急）警報で、ハードウェアだけで発報し、音は煙検知系が起動するサイレンで、急減圧のクラクソンと区別される（SCOM 2.2節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/114） |
| F-ECL-FDS-ALM-02 | 感知器のトリップ信号は、パネルL1の該当するSMOKE DETECTION灯と、パネルF2・F4・A7・MO52Jの4つのMASTER ALARM灯を点灯させ、乗員室のサイレンを鳴らす（SCOM 2.2節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118） |
| F-ECL-FDS-ALM-03 | サイレンは666〜1,470 Hzを5秒周期で上下する音で、いずれかのMASTER ALARM押しボタンで止められる。バックアップC&Wは高い煙濃度に対してクラス2の警報も出す（C&W訓練マニュアル3.3.1節）。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=22） |
| F-ECL-FDS-ALM-04 | L1のCABIN灯はキャビンファン・プレナムの感知器、L FLT DECK・R FLT DECK灯は左右の還流ダクトの感知器、AV BAY灯は各ベイの感知器で点灯する（SCOM 2.2節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/119） |
| F-ECL-FDS-ALM-05 | 警報はSENSOR RESETまでラッチされ、ラッチ中は別の火災が起きても2回目のサイレンは鳴らないが、L1灯とSM SYS SUMM 1の濃度は有効で、バックアップC&Wがクラス2の音を出す。A群とB群は独立で、一方がラッチ中でも他方は緊急警報を出せる（C&W訓練マニュアル3.3.2.2節）。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=25） |
| F-ECL-FDS-ALM-06 | CIRCUIT TESTをAまたはBにすると、AGENT DISCH灯が点灯し、約20秒後にSMOKE DETECTION A（B）灯とサイレンが作動する。5〜10秒でOFFにすると20秒の遅れを飛ばして直ちに作動する（SCOM 2.2節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/123） |
| F-ECL-FDS-ALM-07 | CIRCUIT TESTはCNTL BUS BC3の28 VをA群またはB群の感知器に加えて灯と20秒の遅れを試験し、SENSOR RESETは感知器の論理回路をリセットして次のサイレン警報を可能にする（C&W訓練マニュアル表3-1）。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=39） |
| F-ECL-FDS-ALM-08 | 軌道運用チェックリストの回路試験は、A・Bの各回路を5〜10秒でOFFにする方法と15〜25秒待つ方法の2通りで行い、A試験ではSMOKE DETECTION A灯5個、B試験ではB灯4個（PAYLOAD灯は消灯）とサイレン・MASTER ALARMを確かめる。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=134） |
| F-ECL-FDS-ALM-09 | 警報後に感知器をリセットし、5秒で再警報すれば濃度、20秒で再警報すれば増加率による警報である。直ちに再警報すれば感知器を疑い、自己試験を行ってSM SYS SUMM 1の濃度を確かめる（SCOM 2.2節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118） |
| F-ECL-FDS-ALM-10 | 故障処置手順C/W 4.2dは、煙検知灯のないサイレンに対し、SM SYS SUMM 1の濃度（2.2超または20秒で0.4超の増加）を確かめ、A・Bの回路試験で煙検知の表示回路の故障とC/Wのサイレン起動回路の故障を切り分ける。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=141） |
| F-ECL-FDS-ALM-11 | C&Wの電源A（B）を失うと、音声発生器A（B）による煙警報音が失われる（SCOM 2.2節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115） |
| F-ECL-FDS-ALM-12 | SCOMの経験則は、煙濃度が1.8を下回ったらSENSOR RESETを押し、次の警報がマスクされるのを防ぐとする（SCOM 2.2節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/131） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-FDS-02 | 煙感知器 | データ・指令 | 受信 | 感知器が警報条件を満たすとトリップ信号を出し、パネルL1の該当するSMOKE DETECTION灯を点灯させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118） | — |
| IF-FDS-05 | 煙感知器 | データ・指令 | 送信 | パネルL1のSENSOR RESETで感知器の論理回路をリセットし、CIRCUIT TESTでA群またはB群の感知器にCNTL BUS BC3の28 Vを加えて灯と20秒の時間遅れを試験する。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=39） | — |
| IF-FDS-06 | DPS・アビオニクス | データ・指令 | 送信 | 煙警報でC&Wのサイレンを鳴らし、パネルF2・F4・A7・MO52Jの4つのMASTER ALARM灯を点灯させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/114）C&Wの電源A（B）を失うと、音声発生器A（B）による煙警報音が失われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115） | 上位: IF-ECL-18 |
| IF-FDS-07 | 火災対応・運用管理 | データ・指令 | 送信 | SMOKE DETECTION灯・サイレンとDPS表示の濃度から、乗員は火災の位置を特定し、実際の火災かを確かめる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=38） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| FD-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.2節（PDF p114・p118〜119・p123）：トリップ信号によるL1灯・4つのMASTER ALARM灯・サイレン、L1の灯の割当て、回路試験とSENSOR RESETによるラッチの解除を示し、要約（p131）で濃度が1.8を下回ったらリセットするとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/123） |
| FD-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-51C（PDF p1921）：各感知器の2つの指示（ハードウェア警報とGPCの濃度）を数え、区画に2つしか残らない場合は毎日回路試験を行うと定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1921） |
| FD-12 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 3.3.1・3.3.2.3・3.3.4節（PDF p22〜28・p38〜44）：サイレンの音、ラッチとリセット、回路試験、SM SYS SUMM 1の濃度表示、パネルL1の操作とO14・O15・O16の遮断器を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=26） |
| FD-14 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | C/W 4.2d SIREN – NO SMOKE DETN LT（PDF p141）：煙検知灯のないサイレンに対し、濃度の確認と回路試験で表示回路とサイレン起動回路の故障を切り分ける。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=141） |
| FD-15 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist | 5-23〜5-24 SMOKE DETN CKT TEST（PDF p133〜134）：A・B回路の試験（5〜10秒でOFFにする方法と15〜25秒待つ方法）の手順と、点灯する灯の数（A 5個、B 4個）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=133） |
| FD-16 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 表3.24-1（PDF p583）：オービタの煙検知の表示・操作はパネルL1、SpacelabはパネルR7にあると示す。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=583） |
| FD-18 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | 付録C.12（PDF p71）：煙感知器とリセット信号の電源が共通であることを指摘する。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=71） |
| FD-21 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | PDF p52：飛行中の点検で、すべての感知器が自己試験に合格したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=52） |
| FD-22 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | PDF p43：自己試験で警報の作動が乗員の予想より遅れたのは感知器の論理回路が試験を終える時間のばらつきによるもので、すべての回路が作動可能と確かめられたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=43） |
| FD-25 | NSTS-08292 | STS-65 Space Shuttle Mission Report（1994年） | PDF p34：着陸後に同じ感知器からMASTER ALARMが出たが、データに濃度の変化はなかったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=34） |
| FD-26 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | PDF p53：飛行1日目に煙検知の試験を行い、A・B両回路が合格し、消火系の使用は不要だったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=53） |

## 5. 注記（出典間の相違・構成変更）

> **注記** パネルL1のPAYLOAD灯はSpacehabなど与圧ペイロードモジュールの感知器で点灯するが、その濃度はSM SYS SUMM 1には表示されない（SCOM 2.2節）。与圧ペイロードモジュールは本モデルの機能ブロックに含めないため、本書では扱わない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/119）

> **注記** 検証メモ：回路試験でAGENT DISCH灯が点灯する仕組みを、SCOM（PDF p123）はACAのチャネルへの給電、C&W訓練マニュアル表3-1（p39）はAGENT DISCH灯の接地回路を切ることとし、表現が異なる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=39）

> **注記** 感知器の遮断器（例：MN A SMOKE DETN BAY 2A/3B）は、対応する感知器のリセット機能とベイのAGENT DISCH灯にも給電する（C&W訓練マニュアル3.3.4.2節）。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=40）

> **注記** IOAのFMEA/CIL評価（1988年）は、煙感知器とリセット信号の電源が共通であることを指摘し、両者を分ければリセット回路の問題を回避しやすくなるとした（前項の遮断器の構成に当たる）。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=71）

## 6. 参考文献

1. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Class 1 - Emergency（PDF p114） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/114
2. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Smoke Detection（PDF p118） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118
3. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 3.3.1節 Annunciation（PDF p22） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=22
4. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Smoke Detection（続き）（PDF p119） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/119
5. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 3.3.2.2節 Smoke Detection（PDF p25） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=25
6. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Smoke Detection Circuit Test（PDF p123） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/123
7. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 表3-1 Displays and controls（Panel L1）（PDF p39） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=39
8. JSC-48035 Rev. M PCN-10 Orbit Operations Checklist 5-24 SMOKE DETN CKT TEST（続き）（PDF p134） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=134
9. JSC-48027 Rev. F Malfunction Procedures（MAL） C/W 4.2d Siren – No Smoke Detn Lt（PDF p141） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=141
10. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Caution and Warning Power Supply（PDF p115） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115
11. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 C/W Summary Data・Rules of Thumb（PDF p131） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/131
12. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 3.3.4.1節 Panel L1（PDF p38） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=38
13. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 3.3.4.2節 Panel O14（PDF p40） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=40
14. NASA-CR-185550 Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（McDonnell Douglas、1988年） 付録C.12節 LSS・ALSS の評価（SD/FS）（PDF p71） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=71

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
