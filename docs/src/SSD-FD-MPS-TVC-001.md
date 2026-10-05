# 油圧・推力方向制御（TVC）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-MPS-TVC-001 |
| 表題 | 油圧・推力方向制御（TVC）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-MPS-001 |
| 関連図 | SSD-SYS-ARC-001 図50 MPS 機能構成 |

## 1. 目的

オービタの3系統の油圧をMPS/TVC遮断弁を通してSSMEの5個のエンジン弁と6台のジンバル・サーボアクチュエータへ供給する機能と、アクチュエータの主・副系統の割当て、油圧ロックアップ、軌道上の油圧隔離、エンジンの首振り範囲と格納位置を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-MPS-TVC-01 | オービタの3系統の油圧系は各SSMEへ油圧を供給してエンジン弁の作動と推力方向制御を行い、3系統はパネルR4のHYDRAULICS MPS/TVC ISOL VLVスイッチ（各系統1個）で制御されるTVC弁へ分配される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/600） |
| F-MPS-TVC-02 | 3個のMPS/TVC遮断弁を開くと5個の油圧作動エンジン弁に油圧がかかり、各エンジンの弁はすべて同じ系統（中央エンジンは1系統、左は2系統、右は3系統）から油圧を受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/600） |
| F-MPS-TVC-03 | 各エンジン弁のアクチュエータは制御器のチャネルA/サーボ弁1とチャネルB/サーボ弁2の二重冗長の信号で制御され、油圧系が故障すると油圧作動弁はすべてそのエンジンのヘリウムで吹き閉じられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/600） |
| F-MPS-TVC-04 | 制御器が5個の油圧作動エンジン弁のいずれかを想定外の位置に検知すると5個の弁すべてを最後の位置で油圧的に隔離する油圧ロックアップとなり、弁のドリフトは抑えられるが防げず、停止は指令でも手動でもエンジンのヘリウムによる空圧で行われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/600） |
| F-MPS-TVC-05 | MPS/TVC遮断弁は6台の主エンジンTVCアクチュエータへの油圧供給にも開く必要があり、各SSMEにヨー用とピッチ用の2台のサーボアクチュエータがあって、オービタの推力構造とSSMEのパワーヘッドに取り付けられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/601） |
| F-MPS-TVC-06 | 各サーボアクチュエータは3系統のうち2系統（主系統と待機の副系統）から油圧を受け、専用の切替弁が主系統の圧力の喪失時に自動で副系統へ切り替えてアクチュエータの機能を保つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/601） |
| F-MPS-TVC-07 | アクチュエータの主/副の系統は、中央エンジンがピッチ1/3・ヨー3/1、左エンジンがピッチ2/1・ヨー1/2、右エンジンがピッチ3/2・ヨー2/3である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/601） |
| F-MPS-TVC-08 | ピッチ・アクチュエータはエンジンを据付けの零位置から上下に最大10.5°、ヨー・アクチュエータは左右に最大8.5°首振りさせ、左右エンジンの零位置はX軸から10°上・3.5°外向き、中央エンジンは16°上である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/515） |
| F-MPS-TVC-09 | 軌道上ではHYDRAULICS MPS/TVC ISOL VLV SYS 1〜3スイッチをCLOSEにして、遮断弁下流の油圧漏れから守る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/601） |
| F-MPS-TVC-10 | 軌道上は主エンジンを格納位置から首振りさせる必要がなく、遮断弁を閉じている間は各MPS/TVC機器内の油圧の供給・戻りラインがつながって熱調整のため作動油が循環する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/602） |
| F-MPS-TVC-11 | T-3分25秒にジンバル試験が始まって各ジンバル・アクチュエータを所定の伸縮の動作で動かし、すべて正常ならT-2分15秒にエンジンを所定の位置へ首振りさせて点火まで保つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606） |
| F-MPS-TVC-12 | MPSダンプの後、SSMEは空力加熱を減らすためノズルを内側に寄せた再突入の格納位置へ首振りされる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/610） |
| F-MPS-TVC-13 | 軌道離脱準備ではATVCを再び通電し、軌道上でずれた主エンジンのノズルを再突入の格納位置へ戻すとともに、滑空中に自動で行うドラッグシュート展開のためのSSMEの再配置に備える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/611） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-GNC-16 | 舵面・推力方向制御駆動 | データ・指令 | 受信 | ATVCの4チャネルは各指令に相当するアナログ電圧を作り、SSMEの油圧作動器の4つのサーボ弁へ送ってノズルをジンバルさせる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/514）各SSMEはピッチとヨーの作動器を1基ずつ持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/515） | 上位: IF-ORB-21 |
| IF-MPS-16 | 主エンジン本体 | 油圧 | 送信 | MPS/TVC遮断弁を開くと、5個の油圧作動エンジン弁（主燃料弁・主酸化剤弁・燃料プリバーナ酸化剤弁・酸化剤プリバーナ酸化剤弁・冷却材制御弁）に油圧がかかる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/600）各SSMEのピッチ・ヨーのサーボアクチュエータはオービタの推力構造とSSMEのパワーヘッドに取り付けられ、エンジンを首振りさせる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/601） | — |
| IF-MPS-20 | MPS運用管理 | データ・指令 | 受信 | 乗員はパネルR4のHYDRAULICS MPS/TVC ISOL VLV SYS 1〜3スイッチを軌道上ではCLOSEにし、遮断弁下流の油圧漏れから守る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/601）弁はスイッチをOPENにすると開き、スイッチの上のトークバックが開でOP、閉でCLを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/600） | — |
| IF-APU-09 | 主油圧ポンプ・供給 | 油圧 | 受信 | 3系統の油圧を、パネルR4のMPS/TVC ISOL VLVスイッチで開閉する隔離弁を経て、各SSMEの油圧作動弁5個の作動と推力方向制御（TVC）のために供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/600）各SSMEのサーボアクチュエータは3系統のうち2系統（主・待機）から油圧を受け、各アクチュエータの切替弁が1系統を選ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/601） | 上位: IF-ORB-07 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| MP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.16節「MPS Hydraulic Systems」（PDF p600〜602）：MPS/TVC遮断弁、エンジン弁への油圧、油圧ロックアップ、ジンバル・アクチュエータの油圧系統の割当て、軌道上の隔離を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/600） |
| MP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A5-114（PDF p1066）：軌道上・再突入1日前の油圧再加圧ではMPSヘリウムを要せず、再突入・着陸後のSSMEの再配置ではヘリウムを与えることを定める（TVC喪失時のリミット管理はA5-103G）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1066） |
| MP-03 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.3.1節（PDF p104）：SSMEへの作動油の圧力範囲と、再突入前にSSMEへ油圧をかける前の条件を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=104） |
| MP-07 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | APU/HYD 1.2b（PDF p38）：油圧系統の漏れの切り分けでMPS/TVC遮断弁を閉じ、漏れのある系統のMPS/TVC弁は再突入前のSSME油圧再加圧で操作しないとする。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=38） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SODBは各SSMEへ供給する作動油の圧力を2,700〜3,500 psigとし、再突入前にSSMEへ油圧をかけるときは制御器に通電するか700 psiaのヘリウム圧をかけておくことを求める（弁の不用意な作動による流量計の過回転や汚染を防ぐ）。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=104）

> **注記** 本書の解釈：SCOM（PDF p577）は4台のATVCと6台のSSME油圧TVCサーボアクチュエータをMPSの構成に含めるが、親文書のIF-ORB-21はATVCをGN&Cの飛行制御系の一部としており、本書はATVCをGN&C、サーボアクチュエータとMPS/TVC遮断弁を本ブロックに含めた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/577）

> **注記** 運用飛行規則A5-114は、再突入・着陸後の油圧再加圧とSSMEの再配置ではエンジン弁が開かないようMPSヘリウムをエンジンに与えるが、ヘリウムがないことは手順の制約にならないとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1066）

> **注記** 故障処置手順（APU/HYD 1.2b）は、油圧系統の漏れがある場合は再突入前のSSMEの油圧再加圧でその系統のMPS/TVC弁を操作しないとする。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=38）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p600） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/600
2. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p601） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/601
3. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p515） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/515
4. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p602） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/602
5. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p606） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606
6. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p610） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/610
7. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p611） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/611
8. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p514） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/514
9. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 3.4.3.1 Main Propulsion Subsystem（油圧・ET分離）（PDF p104） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=104
10. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p577） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/577
11. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A5-114 SSME HYDRAULIC REPRESSURIZATION/POSTLANDING SSME REPOSITIONING（PDF p1066） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1066
12. JSC-48027 Rev. F Malfunction Procedures（MAL） APU/HYD 1.2b HYD SYSTEM LEAK（PDF p38） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=38
13. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
