# 乗員系運用管理（OPS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-CREW-OPS-001 |
| 表題 | 乗員系運用管理（OPS）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-CREW-001 |
| 関連図 | SSD-SYS-ARC-001 図64 CREW 機能構成 |

## 1. 目的

医療・運動・騒音・放射線被ばく・脱出の運用と、航空医学・宇宙環境・生命維持の飛行規則を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-CREW-OPS-01 | 医療キットのうち「医師の承認が必要」とした品は、医師でない乗員はFCRの航空医官か搭乗した医師の指示でのみ使い、使った品は記録する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1758） |
| F-CREW-OPS-02 | 乗員の健康に関わる飛行の早期終了は実時間で判断し、軌道上で適切な治療ができないときだけ考える。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1758） |
| F-CREW-OPS-03 | CDR・PLT・MS2にはFD04からEOM-1まで少なくとも1日おきに処方の運動を組み、11日を超える飛行ではほかの乗員にも3日ごとに組む。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1771） |
| F-CREW-OPS-04 | 居住区画の24時間平均の騒音が74 dBA以上なら、騒音源の電源を切る、日程を組み替える、睡眠中に耳栓を使うなどの処置をとる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1765） |
| F-CREW-OPS-05 | 乗員の電離放射線の被ばくは法定の限度を守り、合理的に達成できる限り低く（ALARA）保つ。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1830） |
| F-CREW-OPS-06 | 生命維持のGo/No-Go基準は、LESの酸素供給系（2系統）の1系統の喪失でMDF、2系統の喪失で次のPLSとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2032） |
| F-CREW-OPS-07 | 機上の診断装置と乗員からの情報により、管制センターの航空医官と相談して傷病を診断・治療する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/220） |
| F-CREW-OPS-08 | これまでの飛行の被ばく線量は0.05〜0.07 remで、乗員の被ばく限度を十分下回る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/223） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-CREW-10 | 医療・生体・放射線 | データ・指令 | 送信 | 機上の診断装置と乗員からの情報で、管制センターの航空医官と相談して傷病を診断・治療する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/220） | — |
| IF-CREW-11 | 脱出系 | データ・指令 | 送信 | ベイルアウトでは、高度50,000 ftでコマンダが乗員にバイザーを閉めて非常用酸素を作動させるよう指示し、40,000 ftでキャビンをベントする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/438） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| CS-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.5節 Radiation Equipment（PDF p222〜223）：飛行前・飛行中の被ばくの管理と、これまでの被ばく線量を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/222） |
| CS-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A14-51（PDF p1830）：乗員の電離放射線の被ばく限度とALARAを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1830） |
| CS-04 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | SHUTTLE AUDIO DOSIMETER（PDF p393）：騒音の測定に使う音響線量計の起動・測定・停止の手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=393） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A13-22 ONBOARD MEDICAL KIT（PDF p1758） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1758
2. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A13-33 EXERCISE REQUIREMENTS（PDF p1771） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1771
3. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A13-29 NOISE LEVEL CONSTRAINTS（PDF p1765） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1765
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A14-51 CREW RADIATION EXPOSURE LIMITS [HC]（PDF p1830） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1830
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-1001 Life Support Go/No-Go Criteria（表）（PDF p2032） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2032
6. Shuttle Crew Operations Manual 2.5 Crew Systems（USA007587 Rev. A CPN-1、PDF p220） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/220
7. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.5節 Crew Systems（CSA-CP）（PDF p223） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/223
8. Shuttle Crew Operations Manual 2.10 Escape Systems（USA007587 Rev. A CPN-1、PDF p438） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/438
9. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
