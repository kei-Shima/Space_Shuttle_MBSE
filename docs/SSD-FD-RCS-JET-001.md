# 主・バーニア噴射器（JET）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-RCS-JET-001 |
| 表題 | 主・バーニア噴射器（JET）機能説明書 |
| 版・日付 | Rev. A／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-RCS-001 |
| 関連図 | SSD-SYS-ARC-001 図54 RCS 機能構成 |

## 1. 目的

前部モジュールと左右のポッドにある主噴射器38基・バーニア噴射器6基が、燃料と酸化剤を接触着火させて姿勢制御・回転・並進の推力を生む機能と、構成・計測・運用上の限界・故障の定義を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-RCS-JET-01 | RCSの噴射器は計44基（主噴射器38基・バーニア噴射器6基）で、前部に主噴射器14基と横向きのバーニア2基、後部の各ポッドに主噴射器12基とバーニア2基があり、後部のバーニアは一方の組が横向き、他方の組が下向きである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/718） |
| F-RCS-JET-02 | 主噴射器の真空推力は各870 lb、バーニア噴射器は各24 lbで、バーニアは軌道上の精密な姿勢制御にだけ使われ、狭い姿勢不感帯と推進薬の節約に用いる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/718） |
| F-RCS-JET-03 | 各噴射器は推進薬を供給するマニホールドと噴流の向きで識別され、記号の1番目がポッド（F・L・R）、2番目がマニホールド番号（1〜5）、3番目が噴流の向き（A・F・L・R・U・D）を表す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/717） |
| F-RCS-JET-04 | 各噴射器は燃料・酸化剤それぞれ1個のソレノイド式パイロット・ポペット弁を持ち、噴射指令で通電されると推進薬の液圧で主弁ポペットが開き、指令が終わるとばねと圧力で閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/719） |
| F-RCS-JET-05 | 主噴射器の噴射器板は燃料・酸化剤1対の孔（ダブレット）84組をシャワーヘッド状に配し、外周の追加の燃料孔で燃焼室壁を冷却し、バーニアは1対の孔だけを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/719） |
| F-RCS-JET-06 | 燃焼室はコロンビウム製で二ケイ化コロンビウムの被覆を持ち、ノズルは輻射冷却で、燃焼室とノズルの周りの断熱材が2,000〜2,400°Fの熱を機体構造へ放射させない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/719） |
| F-RCS-JET-07 | 各噴射器の電気接続箱には、ヒータ、燃焼室圧力（Pc）トランスデューサ、漏れ検知用の燃料・酸化剤の噴射器温度トランスデューサ、推進薬弁の配線が接続される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/719） |
| F-RCS-JET-08 | 38基の主噴射器には燃焼不安定の保護があり、弁の電源線を燃焼室の外壁に巻き付けて、燃焼不安定による焼損で電線が切れると弁が閉じ、その噴射器を以後使えなくする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/719） |
| F-RCS-JET-09 | 主噴射器の定常噴射は1〜150秒が最大で、1ミッションの緊急時の上限は後部（+X）で800秒、前部（-X）で300秒であり、バーニアは2時間あたり275秒までの連続噴射が許される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/719） |
| F-RCS-JET-10 | 下向きのバーニア1基を失うと制御能力が足りずバーニアモード全体を失うが、横向きのバーニア1基の喪失では、一部のRMS荷重下の運用を除いて制御を保てる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/718） |
| F-RCS-JET-11 | 運用飛行規則A6-8は、GPCの指令がないのに噴射するもの（fail-on）、指令があっても噴射しないもの（fail-off）、噴射器弁からの漏れ（主噴射器で酸化剤の噴射器温度30°F未満・燃料20°F未満、バーニアで130°F未満）を噴射器の喪失と定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1140） |
| F-RCS-JET-12 | 運用飛行規則A6-153は主噴射器の連続噴射の運用限界を150秒、バーニアを275秒とし、バーニアには1時間あたり1000回以下の噴射指令という制約もある。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1213） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-RCS-02 | 推進薬貯蔵・分配 | 推進薬・流体 | 受信 | 推進薬タンクの燃料・酸化剤をタンク隔離弁とマニホールド隔離弁を通して各マニホールドの噴射器へ送り、マニホールド1〜4は主噴射器、5はバーニア噴射器に供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1134）推進薬は噴射器で霧化・着火して高温のガスと推力を生む。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/718） | — |
| IF-RCS-03 | 噴射器駆動回路 | データ・指令 | 双方向 | RJDはGPCの噴射指令を二元弁を開く電圧に変えて各噴射器の燃料・酸化剤の弁へ加え、噴射を開始させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/719）噴射器の燃焼室圧はRJDの電子回路で検知され、26 psia未満ではPc離散信号がゼロとなる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1140） | — |
| IF-RCS-05 | 噴射器冗長管理 | データ・指令 | 送信 | 各噴射器の燃料・酸化剤の噴射器温度をRMへ送り、RMの限界を3周期続けて下回ると漏れ（fail-leak）と判定させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/729）漏れの限界は、主噴射器で酸化剤30°F・燃料20°F、OPS 2のバーニアで130°Fである。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1140） | — |
| IF-RCS-07 | 熱制御（ヒータ） | 熱 | 受信 | 各噴射器のヒータ（主噴射器20 W、後ろ向きの4基は30 W、バーニア10 W）が噴射器を安全な作動温度に保つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/727） | — |
| IF-RCS-20 | STR：後胴・推力構造・ポッド | 構造・荷重 | 送信 | RCS 噴射器は計44基（主38・バーニア6）で、前部は主14・バーニア2、後部は各ポッドに主12・バーニア2。主噴射器の真空推力は870ポンド、バーニアは24ポンドである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/718） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| RS-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.22節 Jet System（PDF p718〜719）：噴射器44基（主38基・バーニア6基）の配置と推力、パイロット弁・噴射器板・燃焼室・電気接続箱と燃焼不安定の保護を解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/719） |
| RS-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A6-8（PDF p1140）とA6-153・A6-154（p1213〜1214）：噴射器のfail-on・fail-off・fail-leakの定義、主噴射器150秒・バーニア275秒の連続噴射の限界、バーニアの運転を止める条件を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1140） |
| RS-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 10.1a（PDF p748）：噴射器のfail-offが1基か複数かを判定し、MCCの指示で噴射試験を行い、L5L・R5Rの故障ではバーニア喪失の手順へ移る流れを示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=748） |
| RS-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book（SODB）Vol. 1 | 3.4.3.2節（PDF p127〜128）：主噴射器150秒・バーニア125秒の定常噴射の上限、バーニアの1時間あたり1000回の制約、185 psiaの最小入口圧、主噴射器の安全な作動高度を定める。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=127） |
| RS-05 | Orbit Ops Checklist Rev. M PCN-10 | Orbit Operations Checklist（ORB OPS） | RCS HOT FIRE TEST（PDF p240）：DAPを設定して3秒間隔のパルスで噴射器を試験し、JET FAILのメッセージとADIの角速度で噴射を確かめる手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=240） |
| RS-07 | NASA-CR-185550 | IOA: FMEA/CIL Assessment Interim Report（1988年） | C.27節（PDF p102）：主噴射器を失う故障を、RTLS・TALアボートでのOMS・RCSの推進薬投棄の速度の低下からIOAは臨界度1としたため、後部RCSのハードウェアの指摘6件が残ったと記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=102） |
| RS-09 | STS-35 Mission Report | STS-35 Space Shuttle Mission Report（1991年） | Reaction Control Subsystem（PDF p11）：バーニアR5Dがヘリウムの吸入でfail-offとなり、再選択して5パルスの噴射でガスの痕跡が消えたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=11） |
| RS-10 | STS-114 Mission Report | STS-114 Space Shuttle Mission Report（2005年） | Reaction Control System（PDF p37）：バーニアR5RのPcが63 psiaまでしか上がらず、ヒータのON故障による高温の推進薬が原因とされ、RMのfail-offの限界（26 psia）には達しなかったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=37） |
| RS-12 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | Reaction Control System（PDF p41）：SRB分離時の窓の保護のためF1U・F2U・F3Uを2.08秒噴射し、前部RCSのTyvekカバーの放出時刻を表にする。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=41） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：バーニアの連続噴射の上限を、SCOM（PDF p719）と運用飛行規則A6-153は275秒とし、SODB（3.4.3.2、Amendment 216）は125秒とする。A6-153はWSTFの試験で275秒の噴射が熱的な制約を超えないことを確かめたとしており、本書はSCOMと規則の値を用いた。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=127）

> **注記** STS-35では、飛行3日目にバーニア噴射器R5Dがfail-offとなり、Pcの波形からヘリウムの吸入と判断され、再選択して5パルスの噴射でガスの痕跡が消えた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=11）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p718） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/718
2. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p717） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/717
3. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p719） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/719
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-8 RCS THRUSTER（PDF p1140） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1140
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-153 RCS JET MAXIMUM BURN TIME（PDF p1213） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1213
6. Shuttle Crew Operations Manual 付録C Study Notes（USA007587 Rev. A CPN-1、PDF p1134） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1134
7. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p729） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/729
8. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p727） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/727
9. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 3.4.3.2 Reaction Control Subsystems（続き）（PDF p127） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=127
10. STS-35 Mission Report Reaction Control Subsystem（PDF p11） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=11
11. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-04 | 内部ブロック図の機能ブロックをまたぐ流れの IF IF-RCS-20 を足した（GAP-09 の解消）（Rev. AU） |
