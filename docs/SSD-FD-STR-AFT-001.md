# 後胴・推力構造・ポッド（AFT）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-STR-AFT-001 |
| 表題 | 後胴・推力構造・ポッド（AFT）機能説明書 |
| 版・日付 | Rev. A／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-STR-001 |
| 関連図 | SSD-SYS-ARC-001 図70 STR 機能構成 |

## 1. 目的

SSMEを支える後胴の推力構造、後部のET結合点、OMS/RCSポッドの構造を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-STR-AFT-01 | 後胴は外殻・推力構造・内部の二次構造から成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/60） |
| F-STR-AFT-02 | 後胴は中胴の主縦通材への荷重経路、前部隔壁を越える主翼桁の連続、ボディフラップの支持を受け持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/61） |
| F-STR-AFT-03 | 内部の推力構造は3基のSSMEを支え、上部が上のSSMEを、下部が下の2基を支える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/61） |
| F-STR-AFT-04 | オービタ/ETの2つの後部結合点は、縦通材の金具で結合する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/61） |
| F-STR-AFT-05 | 内部の推力構造は主に28本の拡散接合したチタンのトラス部材から成る（OV-105は鍛造品）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/61） |
| F-STR-AFT-06 | 各OMS/RCSポッドはOMS・RCSの推進の構成品をすべて収め、11本のボルトで後胴に取り付けられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/62） |
| F-STR-AFT-07 | ポッドは162 dBの音響と−170〜+135°Fの温度に耐える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/62） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-MPS-22 | MPS：主エンジン本体 | 構造・荷重 | 受信 | 定格出力100%は海面で375,000ポンド、真空で470,000ポンド、104%は海面で393,800ポンド、真空で488,800ポンド、109%は海面で417,300ポンド、真空で513,250ポンドの推力に当たる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/579）SSME 1基にヨー用とピッチ用の2台のサーボアクチュエータがあり、オービタの推力構造と SSME のパワーヘッドに取り付けられ、各々3系統の油圧のうち2系統（主・予備）から受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/601） | — |
| IF-OMS-18 | 推力方向制御（ジンバル） | 構造・荷重 | 受信 | ジンバルリングの2つのパッドでリングをオービタに取り付け、エンジンの推力をポッドとオービタへ伝える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/660）OMS/RCSポッドは軽微な修理で最大100回の飛行に再使用でき、オービタの整備のために取り外せる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/641） | — |
| IF-RCS-20 | RCS：主・バーニア噴射器 | 構造・荷重 | 受信 | RCS 噴射器は計44基（主38・バーニア6）で、前部は主14・バーニア2、後部は各ポッドに主12・バーニア2。主噴射器の真空推力は870ポンド、バーニアは24ポンドである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/718） | — |
| IF-STR-02 | ET：LH2タンク | 構造・荷重 | 双方向 | オービタ/ETの2つの後部結合点は、後胴の縦通材の金具で結合する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/61） | 上位: IF-ORB-36 |
| IF-STR-06 | 中胴・ペイロードベイ | 構造・荷重 | 双方向 | 後胴は中胴の主縦通材への荷重経路と、前部隔壁を越える主翼桁の連続を受け持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/61） | — |
| IF-STR-08 | 翼・ボディフラップ・尾翼 | 構造・荷重 | 双方向 | 垂直尾翼のフィンは、前桁の根元の2本の引張ボルトで後胴の前部隔壁に、後桁の根元の8本のせん断ボルトで後胴の上面に取り付けられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/63） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| ST-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 1.2節 Aft Fuselage・OMS/RCS Pods（PDF p60〜62）：後胴・推力構造・ポッドを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/61） |
| ST-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A18-451（PDF p2104）：オービタの熱の制約と姿勢の管理を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2104） |
| ST-05 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | （PDF p18）：後胴の構造の負の安全余裕のおそれを評価した記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=18） |
| ST-08 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | （PDF p35）：改設計した後胴の試料ボトルの圧力の記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=35） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p60） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/60
2. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p61） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/61
3. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p62） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/62
4. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p660） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/660
5. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p641） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/641
6. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p63） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/63
7. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149
8. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p579） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/579
9. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p601） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/601
10. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p718） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/718

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-04 | 内部ブロック図の機能ブロックをまたぐ流れの IF IF-MPS-22・IF-RCS-20 を足した（GAP-09 の解消）（Rev. AU） |
