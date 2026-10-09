# OMSエンジン・GN2系（ENG）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-OMS-ENG-001 |
| 表題 | OMSエンジン・GN2系（ENG）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-OMS-001 |
| 関連図 | SSD-SYS-ARC-001 図52 OMS 機能構成 |

## 1. 目的

左右のポッドに1基ずつあるOMSエンジンの二元推進薬弁・噴射器・燃焼室・ノズルによる推力の発生と、ボール弁の駆動と噴射後のパージを行うGN2系、エンジンの故障検知を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-OMS-ENG-01 | 各OMSエンジンの推力は6,087 lbで、典型的な機体重量では2基で約2 ft/s²（0.06 g）の加速度を生じ、満載のタンクを使い切ると約1,000 ft/sの速度変化が得られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643） |
| F-OMS-ENG-02 | 各OMSエンジンは1,000回の始動と累積15時間の噴射ができ、噴射の最短時間は2秒である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643） |
| F-OMS-ENG-03 | 二元推進薬弁組立は燃料弁2個と酸化剤弁2個をそれぞれ直列に持ち、漏れに対する冗長な防護となる一方、推進薬を流すには直列の両方の弁が開く必要がある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643） |
| F-OMS-ENG-04 | ボール弁はばねで閉に保たれた空気圧ピストンで開閉され、GPCの指令で動くソレノイド式の制御弁がピストンへの窒素の流れを制御し、2個の制御弁が両方働かないとボール弁は開かない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/644） |
| F-OMS-ENG-05 | 燃料は燃焼室を囲む冷却ジャケットを通って燃焼室を冷やしてから噴射器に達し、酸化剤は二元推進薬弁から噴射器へ直接送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/644） |
| F-OMS-ENG-06 | 燃料噴射器温度は冷却ジャケットを出た燃料の温度で燃焼室壁の温度を間接的に示し、噴射中は約218°F、安全な運転の限界は260°Fである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/645） |
| F-OMS-ENG-07 | 噴射していないときのエンジン入口圧は推進薬タンク圧（通常254 psi）に一致し、噴射中は燃料が約220〜235 psi、酸化剤が約200〜206 psiに下がり、入口圧は推進薬流量の間接的な指標となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/646） |
| F-OMS-ENG-08 | GN2系は各エンジンの燃焼室の脇にある球形のタンク（ボール弁の作動とパージ10回分）から、圧力隔離弁・調圧器・逆止弁・アキュムレータを経て制御弁とパージ弁へ窒素を送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/646） |
| F-OMS-ENG-09 | 調圧器はタンク圧（最大3,000 psig）を作動圧315〜360 psigに下げ、19立方インチのアキュムレータは圧力隔離弁が閉じていても少なくとも1回はボール弁を作動させられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/647） |
| F-OMS-ENG-10 | 噴射が終わると自動の噴射シーケンスにより、推力停止の0.36秒後に直列2個のパージ弁が開いて窒素が燃焼室と噴射器を2秒間吹き抜け、残った燃料を除いて安全な再始動を可能にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/649） |
| F-OMS-ENG-11 | エンジンの故障検知は冗長管理ソフトウェアが行い、PASSは速度比較（MECO後のみ）と燃焼室圧比較を、BFSは燃焼室圧比較だけを使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/662） |
| F-OMS-ENG-12 | 燃料噴射器温度が260°Fを超え、燃料入口圧がエンジンの製造番号（101〜117）ごとに定めた上限以上であれば、ボール弁より下流の燃料の閉塞としてエンジンを喪失とする（A6-3C）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1132） |
| F-OMS-ENG-13 | SODBは安全なエンジン運転の最低高度を70,000 ftとし、通常運用での噴射間の最小休止時間を240秒とする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=140） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-OMS-02 | 推進薬貯蔵・分配 | 推進薬・流体 | 受信 | タンク隔離弁A・Bの一組を開くと、推進薬タンクの燃料と酸化剤が同じポッドのOMSエンジンとOMSクロスフィード弁へ流れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/655）加圧された推進薬はエンジンの二元推進薬弁組立で受けられ、二元推進薬弁が噴射の開始・停止のために流れを調整する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643） | — |
| IF-OMS-04 | クロスフィード・RCS連結 | 推進薬・流体 | 受信 | 受け側ポッドのクロスフィード弁の組を開くと、他方のポッドの燃料と酸化剤がそのポッドのOMSエンジンへ送られ、受け側のタンク隔離弁は閉じておく。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/656）クロスフィードで噴射するときは一方のポッドのタンク隔離弁（2個）を開、他方を閉とし、左右のOMSクロスフィード弁B（2個）を開とする。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=235） | — |
| IF-OMS-05 | 推力方向制御（ジンバル） | 構造・荷重 | 送信 | ジンバルリング組立の2つの取付けパッドにエンジンを取り付け、エンジンの推力をリングで受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/660） | — |
| IF-OMS-06 | 運用管理（規則・処置） | データ・指令 | 受信 | 乗員は各噴射の前にパネルC3のOMS ENGスイッチをARM/PRESSにしてGN2の圧力隔離弁を開き、それ以外のときはOFFにしておく。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/647）GN2の制御弁1・2は、C3のOMS ENGスイッチがARMかARM/PRESSで、O14（左）・O16（右）のOMS ENG VLVスイッチがONのときに計算機の指令で開く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/648） | — |
| IF-OMS-14 | 警報系（C/W） | データ・指令 | 送信 | エンジンを点火すべきときに燃焼室圧が80%未満か、停止すべきときに80%超になると、パネルF7のLEFT・RIGHT OMS警報灯が点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/646）C/Wのハードウェアのチャネルは、OMS ENG-Lが27、OMS ENG-Rが57である。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） | 上位: IF-ORB-41 |
| IF-OMS-17 | データ処理系（DPS） | データ・指令 | 送信 | OMSの圧力・温度・弁位置などの計測データをMDM経由でGPCへ返し、GNC SYS SUMM 2などの表示に使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/641）BFSのGNC SYS SUMM 2には、ヘリウム・推進薬タンク圧、N2タンク圧・調圧圧、エンジン入口圧、ボール弁の位置、燃料噴射器温度、後室量が示される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/645） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| OM-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.18節 Engines（PDF p643〜649）：二元推進薬弁、噴射器、燃焼室、窒素系、パージを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643） |
| OM-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A6-3（OMSエンジンの喪失定義）、A6-4・5（N2タンク・アキュムレータ）、A6-104〜108（計装、最低圧力、枯渇噴射、エンジン故障、ボール弁故障の管理）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1131） |
| OM-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 11.1a（PDF p780〜781）：N2タンク圧・調圧圧の低下からN2の漏れや圧力弁の閉固着を切り分け、エンジンを軌道上の噴射に使わない判断を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=780） |
| OM-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | PDF p143：最低燃焼室圧（80%、ブローダウン時72%）、燃料噴射器温度の上限260°F、GN2アキュムレータの最低圧を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=143） |
| OM-05 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | OMS-248・322・330（PDF p752・765・766）：エンジン入口フィルタ、GN2アキュムレータ、エンジン制御弁の評価を示す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=752） |
| OM-08 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 表7-3（PDF p97）：OMS ENG-L・Rをハードウェアのチャネル27・57とする。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） |
| OM-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 表2-III（PDF p16）：各噴射の比推力、混合比、流量、燃焼室圧、冷却ジャケット出口の燃料温度を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=16） |
| OM-12 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | PDF p45：左ポッド04・エンジンS/N 108、右ポッド01・エンジンS/N 109の構成を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=45） |
| OM-13 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | PDF p42：右エンジンS/N 109（改修後12回目の飛行）と左エンジンS/N 108の構成を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=42） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：比推力をSCOMのOMS Summary Data（PDF p671）は313秒とし、STS-2報告の表2-III（PDF p16）の再構成値は314.4〜314.9秒である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=16）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p643） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/643
2. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p644） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/644
3. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p645） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/645
4. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p646） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/646
5. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p647） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/647
6. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p649） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/649
7. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p662） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/662
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-3 OMS ENGINE（PDF p1132） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1132
9. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 3.4.3.3節 Orbital Maneuvering Subsystem（3〜5項）（PDF p140） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=140
10. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p655） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/655
11. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p656） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/656
12. Orbit Operations Checklist Rev M PCN-10 9-3 ON-ORBIT OMS BURN（続き）（PDF p235） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=235
13. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p660） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/660
14. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p648） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/648
15. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 表7-3 Hardware C&W（PDF p97） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97
16. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p641） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/641
17. STS-2 Orbiter Mission Report 表2-III Engine Performance Summary（PDF p16） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=16
18. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
