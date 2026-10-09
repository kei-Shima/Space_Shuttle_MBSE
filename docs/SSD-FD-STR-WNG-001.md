# 翼・ボディフラップ・尾翼（WNG）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-STR-WNG-001 |
| 表題 | 翼・ボディフラップ・尾翼（WNG）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-STR-001 |
| 関連図 | SSD-SYS-ARC-001 図70 STR 機能構成 |

## 1. 目的

翼・エレボン・ボディフラップ・垂直尾翼の構造と、胴体への取付けを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-STR-WNG-01 | 翼の4本の主桁は、熱荷重を抑えるため波形のアルミニウムで造られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/58） |
| F-STR-WNG-02 | 前桁は再使用のRCCの前縁構造の取付けとなり、後桁はエレボンと油圧・電気の構成品の取付けとなる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/58） |
| F-STR-WNG-03 | エレボンは大気中の飛行制御を行い、各翼で2つの区分に分かれ、各区分は3つのヒンジで支えられ、33°上・18°下まで動く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/58） |
| F-STR-WNG-04 | 翼は上面の引張ボルトの継手と下面のせん断継手で胴体に取り付けられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/59） |
| F-STR-WNG-05 | ボディフラップは突入中に3基のSSMEを熱から守り、大気中の飛行でピッチのトリムを与える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/62） |
| F-STR-WNG-06 | 垂直尾翼は構造のフィン・ラダー/スピードブレーキ・翼端・下部後縁から成り、ラダーは2つに割れてスピードブレーキになる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/63） |
| F-STR-WNG-07 | フィンは前桁の根元の2本の引張ボルトで後胴の前部隔壁に、後桁の根元の8本のせん断ボルトで後胴の上面に取り付けられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/63） |
| F-STR-WNG-08 | 垂直尾翼の構造は163 dBの音響と最高350°Fに耐えるよう設計される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/64） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-MECH-03 | 降着装置 | 構造・荷重 | 双方向 | 前脚は前胴の下部、主脚は中胴に隣接する左右の翼の下部に収められる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/543） | 上位: IF-ORB-38 |
| IF-STR-07 | 中胴・ペイロードベイ | 構造・荷重 | 双方向 | 翼は上面の引張ボルトの継手と、胴体の通し構造の下面のせん断継手で胴体に取り付けられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/59） | — |
| IF-STR-08 | 後胴・推力構造・ポッド | 構造・荷重 | 双方向 | 垂直尾翼のフィンは、前桁の根元の2本の引張ボルトで後胴の前部隔壁に、後桁の根元の8本のせん断ボルトで後胴の上面に取り付けられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/63） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| ST-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 1.2節 Wing・Body Flap・Vertical Tail（PDF p57〜64）：翼・ボディフラップ・垂直尾翼を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/58） |
| ST-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A18-401（PDF p2101）：TPSの接着層の温度の限界と構造の熱応力を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2101） |
| ST-05 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | （PDF p7）：翼前縁の衝撃検知の計装などで上昇中の衝撃を調べたことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=7） |
| ST-07 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | （PDF p12）：翼前縁衝撃検知系（WLEIDS）の2つの指示の記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=12） |
| ST-08 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | （PDF p10）：WLEIDSのセンサ1080が応答しなかった記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p58） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/58
2. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p59） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/59
3. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p62） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/62
4. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p63） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/63
5. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p64） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/64
6. Shuttle Crew Operations Manual 2.14 Landing/Deceleration System（USA007587 Rev. A CPN-1、PDF p543） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/543
7. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
