# ヘリウム加圧（HE）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-OMS-HE-001 |
| 表題 | ヘリウム加圧（HE）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-OMS-001 |
| 関連図 | SSD-SYS-ARC-001 図52 OMS 機能構成 |

## 1. 目的

各ポッドの高圧ヘリウムタンクから並列の圧力弁・二重調圧器・逆止弁を経て燃料タンクと酸化剤タンクを約250 psigに加圧して推進薬をエンジンへ押し出す機能と、蒸気隔離弁・逃し弁による保護を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-OMS-HE-01 | 各ポッドのヘリウム加圧系は、高圧ヘリウムタンク、ヘリウム圧力隔離弁2個、二重調圧器組立2組、酸化剤タンク側だけの並列の蒸気隔離弁、直並列の逆止弁組立、逃し弁から成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/649） |
| F-OMS-HE-02 | 1基のヘリウムタンクが燃料タンクと酸化剤タンクの両方を加圧するため両タンクが同じ圧力に保たれて混合比の誤りが避けられ、ヘリウムタンクの使用圧力範囲は4,800〜390 psiaである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/649） |
| F-OMS-HE-03 | 推進薬の残量が最大ブローダウン（OMSタンクで約39%）を下回ると、タンク内に残ったヘリウムの圧力だけでそのタンクの推進薬を使い切ることができる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/650） |
| F-OMS-HE-04 | ヘリウム圧力弁A・Bは並列でヘリウムの冗長な経路となり、ばねで閉・ソレノイドで開く弁で、噴射以外は閉じておき、スイッチがGPC位置なら自動の噴射シーケンスが噴射の開始時に開き終了時に閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/650） |
| F-OMS-HE-05 | 圧力弁を手動で開くときはAとBの間に2秒置き、急な圧力変化によるウォータハンマを防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/650） |
| F-OMS-HE-06 | 各調圧器組立は流量制限器と直列の一次・二次の調圧器を持ち、通常は一次（正常流量で252〜262 psig）が制御し、一次が故障すると二次（259〜269 psig）が圧力制御を続ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/651） |
| F-OMS-HE-07 | 酸化剤タンクへの加圧配管の蒸気隔離弁は、逆止弁を透過した酸化剤の蒸気が上流へ移って燃料系に入り、ハイパーゴリック反応を起こすのを防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/651） |
| F-OMS-HE-08 | 逆止弁組立は4個の独立した逆止弁を直並列につないだもので、並列の経路がヘリウムの冗長な経路を、直列が逆流に対する冗長な防護を与え、各組立の入口にフィルタがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/651） |
| F-OMS-HE-09 | 逆止弁の下流の逃し弁は推進薬タンクを過圧から守り、破裂板は303〜313 psigで破れ、逃し弁は286 psigで開いて280 psigで再着座する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/651） |
| F-OMS-HE-10 | ヘリウムタンク圧が390 psia未満になるか、すべての加圧経路が閉じた場合は、ヘリウムタンクを喪失とする（A6-1）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1127） |
| F-OMS-HE-11 | 漏れているヘリウム系は、ヘリウムタンク圧が正常な推進薬タンク圧を保てる限り、両エンジンへの供給に使ってアレージ容積を増やしてよい（A6-202）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1226） |
| F-OMS-HE-12 | IOA（1988年）は、並列の一方の圧力弁の流れの制限は両弁を開くOMS-1・OMS-2では検出できないが、発射台での予圧とOMS-2以後の噴射では弁を単独で使うため検出できるとして指摘を取り下げた。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=729） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-OMS-01 | 推進薬貯蔵・分配 | 推進薬・流体 | 送信 | 各ポッドの1基のヘリウムタンクから、圧力弁・二重調圧器・逆止弁を経て約250 psigに調圧したヘリウムで燃料タンクと酸化剤タンクを加圧する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/651）1基のヘリウムタンクが両タンクを加圧するので、両タンクは同じ圧力に保たれて混合比の誤りが避けられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/649） | — |
| IF-OMS-07 | 運用管理（規則・処置） | データ・指令 | 受信 | 乗員はパネルO8のLEFT・RIGHT OMS He PRESS/VAPOR ISOLスイッチA・Bで、ヘリウム圧力弁と蒸気隔離弁を手動で開閉するか、GPC位置にして噴射シーケンスの自動制御に任せる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/650）AかBのどちらかのスイッチがOPENなら両方の蒸気隔離弁が開き、両方がCLOSEなら両方が閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/651） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| OM-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.18節 Helium System（PDF p649〜651）：ヘリウムタンク、圧力弁、調圧器、蒸気隔離弁、逆止弁、逃し弁を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/651） |
| OM-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A6-1（ヘリウムタンクの喪失定義）、A6-51のヘリウムタンク・ヘリウムレグの漏れ・故障の処置、A6-201・202（漏れているヘリウム系の噴射）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1150） |
| OM-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 11.1a（PDF p782〜784）：推進薬タンク圧の低下からヘリウム配管の閉塞や圧力弁・調圧器の閉故障を切り分け、He PRESS/VAP ISOL Bで再加圧する手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=782） |
| OM-05 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | OMS-111・119・121・127（PDF p729〜735）：ヘリウム隔離弁・調圧器の流れの制限と、酸化剤の蒸気隔離弁の評価を示す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=731） |
| OM-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | PDF p17：加圧系は正常で、最初の噴射のアレージ圧が他より3〜4 psi低かったことを記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=17） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：A6-1はOMSヘリウムタンクの喪失を390（640）psia未満とし、A6-51の故障定義は640 psi未満を「HE TANK FAIL」とする。本書は括弧内の値を計測誤差を見込んだ運用上の値と解した（本書の解釈）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1144）

> **注記** 検証メモ：IOA（1988年）は酸化剤の蒸気隔離弁の故障について最悪の影響からIR/3を勧めたが、調圧器は推進薬に適合し90日の暴露試験に合格しているとのサブシステムマネージャの判断を受け入れ、3/3とした。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=735）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p649） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/649
2. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p650） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/650
3. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p651） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/651
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-1 OMS/RCS HELIUM TANK（PDF p1127） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1127
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-202 OMS LEAKING HE SYSTEM BURN（PDF p1226） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1226
6. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） C.17-3 OMS-111 Valve, Helium Isolation（PDF p729） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=729
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-51 OMS FAILURE MANAGEMENT [CIL]（PDF p1144） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1144
8. NASA-CR-185524 Vol. 2 IOA: CIL issues resolution report（1988） C.17-9 OMS-127 Valve, Vapor Isolation-Oxidizer（PDF p735） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=735
9. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
