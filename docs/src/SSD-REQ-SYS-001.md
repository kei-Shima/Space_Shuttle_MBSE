# システム要求書（L1）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-REQ-SYS-001 |
| 表題 | システム要求書（L1） |
| 版・日付 | Rev. G／2026-10-03 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図1 システム構成 |

## 1. 目的

スペースシャトルのシステム全体に対する要求（L1）を、要求文・値・根拠・割付先・フェーズ・検証方法の形で示し、機能説明書の機能行（F-ID）とインタフェース（IF-ID）へのトレースの起点とする。要求は乗員運用マニュアル（SCOM）・運用飛行規則・SODB に記された実績の運用値から逆に起こしたもので、設計当初の要求仕様ではない。各系の下位（L2）の要求（SSD-REQ-<系>-001、電力系を含む18件）へ展開する。

## 2. 要求の書き方

各要求は、要求文（〜すること）、値、根拠（出典の頁）、割付先（機能行 F-ID・IF 行 IF-ID）、フェーズ（SSD-OPS-PHASE-001 の PH・AB の ID）、検証方法を持つ。検証方法は A（解析）、T（試験）、I（検査）、D（実証）の4つで、ここでは要求の性質から想定する方法を示す。要求はすべて、公開資料に記された実績の運用値・限界値から導いた「実績の運用値から導いた要求」である。

## 3. システム要求

| ID | 要求 | 値 | 根拠 | 割付先 | フェーズ | 検証 |
|---|---|---|---|---|---|---|
| REQ-SYS-01 | システムは、オービタ、2本の SRB、推進薬を収める外部タンク、3基の SSME の4つの主要素で構成すること。 | 主要素 4（オービタ・SRB×2・ET・SSME×3） | スペースシャトルは、オービタ、2本の SRB、燃料と酸化剤を収める外部タンク、3基の主エンジンの4つの主要素から成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/31） | F-ORB-01・F-ET-01・F-SRB-01・F-MPS-02・IF-SYS-01・IF-SYS-02・IF-SYS-07 | PH-1（打上げ前）・PH-2（上昇） | I（検査） |
| REQ-SYS-02 | ペイロードを高度 100〜312 n.mi. の地球周回軌道へ運べること。 | 100〜312 n.mi. | シャトルはペイロードを高度 100〜312 n.mi. の地球周回軌道へ運べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/31） | F-MPS-01・F-SRB-01・F-OMS-01・F-GNC-05 | PH-2（上昇） | D（実証） |
| REQ-SYS-03 | 直径 15 ft・長さ 60 ft のペイロードベイにペイロードを収めること。 | 直径 15 ft × 長さ 60 ft | ペイロードは直径 15 ft・長さ 60 ft のベイに収める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/31） | F-STR-05・F-MECH-10 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | I（検査） |
| REQ-SYS-04 | オービタと2本の SRB を再使用できること。 | オービタ・SRB を再使用 | システムの主な要求は、オービタと2本の SRB を再使用できることである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/31） | F-SRB-03・F-TPS-01・F-MPS-02・F-EPS-FCP-01 | PH-8（ターンアラウンド） | D（実証） |
| REQ-SYS-05 | 最大8人の乗員を運べること。 | 8人（実績） | オービタは最大8人の乗員を運んだ実績がある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/31） | F-CREW-01・F-ECLSS-02 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-SYS-06 | 通常のミッションで 4〜16 日の軌道滞在ができること。 | 4〜16 日 | 通常のミッションは宇宙で 4〜16 日である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/31） | F-EPS-PRSD-04・F-ECLSS-04 | PH-3（軌道） | A（解析） |
| REQ-SYS-07 | 乗員室を普段着で過ごせる環境（14.7 ± 0.2 psia）に保つこと。 | 14.7 ± 0.2 psia | 乗員室は普段着で過ごせる環境である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/31）圧力制御系は通常、乗員室を 14.7 ± 0.2 psia に与圧する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360） | F-ECLSS-02・F-ECLSS-03・F-STR-04・IF-ORB-09 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-SYS-08 | 乗員と機体の加速度を 3g 以下に保ち、上昇時の Nx を +3.11 g 以下とすること。 | 3 g（上昇 Nx ≦ +3.11 g） | 加速度は 3g を超えない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/31）上昇中の並進加速度の限界は Nx = +3.11 g である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/813） | F-MPS-01・F-GNC-05・F-STR-01 | PH-2（上昇）・PH-6（再突入） | A（解析） |
| REQ-SYS-09 | 帰還時に約 1,100 n.mi. の横方向移動（クロスレンジ）ができること。 | 約 1,100 n.mi. | 地球へ帰るとき、オービタは約 1,100 n.mi. のクロスレンジの運動能力を持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/31） | F-TPS-01・F-STR-01・F-APU-02 | PH-6（再突入） | A（解析） |
| REQ-SYS-10 | 各機能を2重・3重に冗長化し、1故障でミッションを継続でき、2故障で安全に帰還できること。 | 1故障で継続・2故障で帰還 | 各機能は2重または3重に冗長化された機器で構成され、1故障後もミッションを継続でき、2故障後も着陸地点へ安全に帰還できることを目標としている。（出典: https://www.spaceshuttleguide.com/system/navigation.htm）2故障許容（フェイルオペレーショナル／フェイルセーフ）は、系の中の任意の2故障に耐えて安全に離脱・着陸できる状態である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=580） | F-ORB-03・F-DPS-03・F-APU-01・F-EPS-04・F-GNC-01 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | A（解析） |
| REQ-SYS-11 | 系の冗長を、2故障許容・1故障許容・0故障許容・飛行不能の4段階で判定できるよう構成すること。 | 4段階 | A2-101 は冗長度を、2故障許容、1故障許容、0故障許容、飛行不能の4段階で定義する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=580） | F-ORB-03・F-CW-02 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | A（解析） |
| REQ-SYS-12 | 通常の EOM 着陸は第5飛行日（約96時間）以降とし、再突入に必須の系の1故障目では通常 NEOM まで飛行を続けられること。 | EOM ≧ 約96時間 | 通常の EOM 着陸は第5飛行日の初め（約96時間）より前には行わない。再突入に必須の系の1故障目では、通常は NEOM まで飛行を続ける。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=581） | F-ORB-03 | PH-3（軌道） | D（実証） |
| REQ-SYS-13 | すべての飛行で2日の延長日（着陸地の天候に1日、系統のウェーブオフに1日）を確保できること。 | 延長日 2 | すべての STS の飛行は2日の延長日を持たねばならず、1日は着陸地の天候、もう1日は系統の非常時のウェーブオフに使う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=586） | F-EPS-PRSD-04・F-ECLSS-04 | PH-3（軌道） | A（解析） |
| REQ-SYS-14 | 系統の故障に対し、Go/No-Go の判定基準（A2-1001 ほか各章の1001番）で上昇の継続・MDF・次の PLS への着陸を判断できること。 | 判定区分 3（上昇継続・MDF・次の PLS） | A2-1001 は、推進・DPS・GNC・通信などの主要な故障を集約したオービタ系の Go/No-Go 基準である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=800） | F-ORB-03・F-CW-01・F-DPS-03 | PH-2（上昇）・PH-3（軌道） | A（解析） |
| REQ-SYS-15 | 上昇中のエンジン停止に対し、intact アボート（RTLS・TAL・AOA・ATO）で計画した着陸地点に安全に戻れること。 | intact アボート 4 | intact アボートは、オービタを計画した着陸地点へ安全に戻すためのものである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/855） | F-GNC-05・F-OMS-01・F-MPS-01・F-DPS-03 | AB-RTLS（RTLS（射点帰還））・AB-TAL（TAL（大洋横断着陸））・AB-AOA（AOA（1周帰還））・AB-ATO（ATO（軌道へのアボート）） | A（解析） |
| REQ-SYS-16 | 地上支援設備に接続していない間、オービタ・外部タンク・SRB・ペイロードの電力をすべて機上で供給すること。 | 全電力を機上で供給 | EPS は、地上支援設備に接続していないときに、オービタ、外部タンク、SRB、ペイロードが必要とする電力をすべてまかなう。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/311） | F-EPS-01・F-EPS-03・IF-ORB-14・IF-ORB-27・IF-ORB-28 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-SYS-17 | 着陸重量を、EOM で 233,000 lb、アボートで軌道傾斜角に応じた 239,000〜248,000 lb の認定限界以下にすること。 | EOM 233k lb、アボート 239k〜248k lb | オービタの最大着陸重量は EOM で 233,000 lb、RTLS・TAL・AOA/ATO では傾斜角に応じて 239,000〜248,000 lb で、これを超えるときは飛行ごとの適用除外を要する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/807） | F-MECH-03・F-STR-01 | PH-6（再突入）・AB-RTLS（RTLS（射点帰還））・AB-TAL（TAL（大洋横断着陸））・AB-AOA（AOA（1周帰還））・AB-ATO（ATO（軌道へのアボート）） | A（解析） |
| REQ-SYS-18 | 前脚接地の降下率を 11.5 fps（9.9°/s）以下にすること。 | 11.5 fps | 前脚接地時の降下率は 11.5 fps（9.9°/s）、または前脚の鉛直荷重が 90,000 lb を超えない値を超えてはならない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/809） | F-MECH-03 | PH-6（再突入） | T（試験） |

## 4. 下位の要求への展開

L1 の要求ごとに、展開した各系の L2 要求を示す。L2 の要求書は次の18件である：[SSD-REQ-EPS-001](SSD-REQ-EPS-001.md)・[SSD-REQ-ECLSS-001](SSD-REQ-ECLSS-001.md)・[SSD-REQ-GNC-001](SSD-REQ-GNC-001.md)・[SSD-REQ-DPS-001](SSD-REQ-DPS-001.md)・[SSD-REQ-MPS-001](SSD-REQ-MPS-001.md)・[SSD-REQ-OMS-001](SSD-REQ-OMS-001.md)・[SSD-REQ-RCS-001](SSD-REQ-RCS-001.md)・[SSD-REQ-APU-001](SSD-REQ-APU-001.md)・[SSD-REQ-CT-001](SSD-REQ-CT-001.md)・[SSD-REQ-TPS-001](SSD-REQ-TPS-001.md)・[SSD-REQ-CW-001](SSD-REQ-CW-001.md)・[SSD-REQ-CREW-001](SSD-REQ-CREW-001.md)・[SSD-REQ-EVA-001](SSD-REQ-EVA-001.md)・[SSD-REQ-PLS-001](SSD-REQ-PLS-001.md)・[SSD-REQ-MECH-001](SSD-REQ-MECH-001.md)・[SSD-REQ-STR-001](SSD-REQ-STR-001.md)・[SSD-REQ-ET-001](SSD-REQ-ET-001.md)・[SSD-REQ-SRB-001](SSD-REQ-SRB-001.md)。

| L1 | L2 |
|---|---|
| REQ-SYS-01 | REQ-DPS-09・REQ-MPS-07・REQ-STR-01・REQ-STR-02・REQ-STR-06・REQ-ET-01・REQ-ET-04・REQ-ET-05・REQ-SRB-01・REQ-SRB-03 |
| REQ-SYS-02 | REQ-GNC-05・REQ-GNC-06・REQ-GNC-09・REQ-GNC-11・REQ-DPS-08・REQ-MPS-01・REQ-MPS-08・REQ-OMS-01・REQ-OMS-05・REQ-OMS-06・REQ-CT-03・REQ-PLS-01・REQ-PLS-07・REQ-ET-01・REQ-ET-02・REQ-ET-03・REQ-SRB-01 |
| REQ-SYS-03 | REQ-CT-04・REQ-CT-07・REQ-CREW-07・REQ-PLS-01・REQ-PLS-04・REQ-PLS-06・REQ-PLS-08・REQ-MECH-03・REQ-STR-05 |
| REQ-SYS-04 | REQ-EPS-20・REQ-MPS-02・REQ-OMS-01・REQ-TPS-01・REQ-TPS-02・REQ-TPS-03・REQ-TPS-06・REQ-MECH-05・REQ-MECH-06・REQ-STR-01・REQ-STR-08・REQ-ET-07・REQ-SRB-09 |
| REQ-SYS-05 | REQ-ECLSS-02・REQ-ECLSS-03・REQ-ECLSS-11・REQ-ECLSS-13・REQ-CW-06・REQ-CREW-01・REQ-CREW-04・REQ-CREW-05・REQ-CREW-06・REQ-CREW-08・REQ-CREW-09・REQ-EVA-04・REQ-EVA-08・REQ-STR-03 |
| REQ-SYS-06 | REQ-EPS-12・REQ-ECLSS-05・REQ-ECLSS-06・REQ-ECLSS-10・REQ-ECLSS-13・REQ-TPS-07・REQ-CREW-01・REQ-CREW-02・REQ-CREW-03・REQ-EVA-05 |
| REQ-SYS-07 | REQ-EPS-11・REQ-EPS-16・REQ-ECLSS-01・REQ-ECLSS-02・REQ-ECLSS-04・REQ-ECLSS-05・REQ-ECLSS-06・REQ-CREW-03・REQ-EVA-02・REQ-EVA-03・REQ-EVA-07・REQ-PLS-07・REQ-STR-03・REQ-STR-04 |
| REQ-SYS-08 | REQ-GNC-06・REQ-GNC-07・REQ-MPS-01・REQ-MPS-03・REQ-SRB-02 |
| REQ-SYS-09 | REQ-GNC-07・REQ-STR-07 |
| REQ-SYS-10 | REQ-EPS-03・REQ-EPS-04・REQ-EPS-07・REQ-EPS-09・REQ-EPS-13・REQ-EPS-17・REQ-ECLSS-03・REQ-ECLSS-07・REQ-ECLSS-08・REQ-GNC-01・REQ-GNC-03・REQ-GNC-04・REQ-GNC-08・REQ-GNC-10・REQ-GNC-11・REQ-GNC-12・REQ-GNC-14・REQ-DPS-01・REQ-DPS-02・REQ-DPS-03・REQ-DPS-04・REQ-DPS-05・REQ-DPS-06・REQ-DPS-07・REQ-DPS-08・REQ-DPS-10・REQ-DPS-11・REQ-DPS-12・REQ-MPS-04・REQ-MPS-05・REQ-MPS-06・REQ-MPS-09・REQ-MPS-11・REQ-MPS-12・REQ-OMS-02・REQ-OMS-03・REQ-OMS-04・REQ-OMS-07・REQ-OMS-08・REQ-OMS-09・REQ-OMS-10・REQ-RCS-01・REQ-RCS-04・REQ-RCS-05・REQ-RCS-06・REQ-RCS-07・REQ-RCS-08・REQ-APU-01・REQ-APU-02・REQ-APU-03・REQ-APU-04・REQ-APU-05・REQ-APU-06・REQ-APU-07・REQ-APU-08・REQ-CT-01・REQ-CT-02・REQ-CT-05・REQ-CT-06・REQ-CT-08・REQ-TPS-04・REQ-TPS-05・REQ-CW-02・REQ-CW-03・REQ-CW-06・REQ-CW-07・REQ-CREW-07・REQ-CREW-09・REQ-CREW-10・REQ-EVA-01・REQ-EVA-06・REQ-PLS-02・REQ-PLS-03・REQ-PLS-05・REQ-PLS-09・REQ-MECH-01・REQ-MECH-02・REQ-MECH-04・REQ-MECH-07・REQ-MECH-08・REQ-ET-06・REQ-ET-09・REQ-SRB-04・REQ-SRB-05・REQ-SRB-06・REQ-SRB-07 |
| REQ-SYS-13 | REQ-EPS-12・REQ-OMS-11・REQ-RCS-09・REQ-APU-09 |
| REQ-SYS-14 | REQ-EPS-18・REQ-ECLSS-09・REQ-ECLSS-12・REQ-GNC-02・REQ-GNC-13・REQ-DPS-13・REQ-OMS-10・REQ-RCS-03・REQ-RCS-10・REQ-APU-08・REQ-CT-01・REQ-CT-09・REQ-CW-01・REQ-CW-03・REQ-CW-04・REQ-CW-05・REQ-CW-08・REQ-CW-09・REQ-CW-10・REQ-CREW-10・REQ-PLS-03・REQ-PLS-09・REQ-MECH-10・REQ-STR-04 |
| REQ-SYS-15 | REQ-ECLSS-09・REQ-GNC-05・REQ-DPS-09・REQ-MPS-13・REQ-OMS-07・REQ-RCS-02・REQ-RCS-09・REQ-APU-01・REQ-APU-09・REQ-EVA-06・REQ-ET-06・REQ-ET-08・REQ-SRB-08 |
| REQ-SYS-16 | REQ-EPS-01・REQ-EPS-02・REQ-EPS-04・REQ-EPS-05・REQ-EPS-06・REQ-EPS-08・REQ-EPS-09・REQ-EPS-10・REQ-EPS-14・REQ-EPS-15・REQ-EPS-19・REQ-EPS-21・REQ-EPS-22・REQ-DPS-03・REQ-ET-05・REQ-SRB-06 |
| REQ-SYS-17 | REQ-MPS-10・REQ-OMS-11 |
| REQ-SYS-18 | REQ-MECH-07・REQ-MECH-09 |

## 5. 割付先から見た要求

割付先の機能行・IF 行を持つ文書ごとに、割り付けた L1 要求を示す（機能行・IF 行からの逆向きのトレース）。

| 文書 | 割り付けた要求 |
|---|---|
| SSD-FD-APU-001 | REQ-SYS-09・REQ-SYS-10 |
| SSD-FD-CREW-001 | REQ-SYS-05 |
| SSD-FD-CW-001 | REQ-SYS-11・REQ-SYS-14 |
| SSD-FD-DPS-001 | REQ-SYS-10・REQ-SYS-14・REQ-SYS-15 |
| SSD-FD-ECLSS-001 | REQ-SYS-05・REQ-SYS-06・REQ-SYS-07・REQ-SYS-13 |
| SSD-FD-EPS-001 | REQ-SYS-07・REQ-SYS-10・REQ-SYS-16 |
| SSD-FD-EPS-FCP-001 | REQ-SYS-04 |
| SSD-FD-EPS-PRSD-001 | REQ-SYS-06・REQ-SYS-13 |
| SSD-FD-ET-001 | REQ-SYS-01 |
| SSD-FD-GNC-001 | REQ-SYS-02・REQ-SYS-08・REQ-SYS-10・REQ-SYS-15 |
| SSD-FD-MECH-001 | REQ-SYS-03・REQ-SYS-17・REQ-SYS-18 |
| SSD-FD-MPS-001 | REQ-SYS-01・REQ-SYS-02・REQ-SYS-04・REQ-SYS-08・REQ-SYS-15 |
| SSD-FD-OMS-001 | REQ-SYS-02・REQ-SYS-15 |
| SSD-FD-ORB-001 | REQ-SYS-01・REQ-SYS-10・REQ-SYS-11・REQ-SYS-12・REQ-SYS-14 |
| SSD-FD-SRB-001 | REQ-SYS-01・REQ-SYS-02・REQ-SYS-04 |
| SSD-FD-STR-001 | REQ-SYS-03・REQ-SYS-07・REQ-SYS-08・REQ-SYS-09・REQ-SYS-17 |
| SSD-FD-TPS-001 | REQ-SYS-04・REQ-SYS-09 |

## 6. 検証（V&V）

各要求の検証方法（解析 A・試験 T・検査 I・実証 D）について、その方法で要求が満たされたことを示す公開資料の頁を「検証の根拠」に示す（18件のうち根拠あり 15件・根拠なし 3件）。根拠が見つからないものは「根拠なし」とし、理由を書いた。

| ID | 検証方法 | 状態 | 検証の根拠 |
|---|---|---|---|
| REQ-SYS-01 | I（検査） | 根拠あり | STS-135 の飛行報告は、飛行した機体の構成をオービタ OV-104、外部タンク ET-138、3基の Block II SSME（製造番号つき）、2本の RSRB（BI-146）として記録しており、4つの主要素から成る構成を機体ごとの構成記録で確かめられることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=6） |
| REQ-SYS-02 | D（実証） | 根拠あり | STS-125 の飛行報告は、ハッブル宇宙望遠鏡へのランデブーで OMS-5 の後にオービタが 303.0 × 303.3 n.mi. の軌道に入ったことを示し、範囲の上限（312 n.mi.）に近い高度へ実際に到達したことの実証である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=14）STS-59 の飛行報告は、直接投入の後の OMS-2 で 121.3 × 120.5 n.mi. の軌道を得たことを示し、範囲の下限側の低い軌道での運用の実証である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=18） |
| REQ-SYS-03 | I（検査） | 根拠なし | 根拠なし：ペイロードベイの寸法（直径 15 ft・長さ 60 ft）を検査・計測した記録は手元の資料に無い。SODB 3.4.5.2（p187）が「標準の直径 15 ft のペイロード包絡域」に触れるだけで、長さを含む寸法の検査の根拠にはならない。 |
| REQ-SYS-04 | D（実証） | 根拠あり | STS-135 の飛行報告は、この飛行がアトランティス（OV-104）の33回目で最後の飛行であったことを示し、同じオービタを33回再使用したことの実証である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=6）STS-108 の飛行報告は、2本の SRB が回収されて KSC へ戻され、点検・分解・再整備に回されたこと、点検で両 SRB の状態が極めて良好だったことを示し、SRB を回収して再使用する運用の実証である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=19） |
| REQ-SYS-05 | D（実証） | 根拠なし | 根拠なし：手元の飛行報告で同時に搭乗した乗員は最大7人である（STS-114・STS-125 は7人、STS-122 の「8人」は ISS 要員の交代を含む延べ人数で上り下りとも7人）。8人が搭乗した飛行（STS-61A・STS-71）の報告は資料に無い。 |
| REQ-SYS-06 | A（解析） | 根拠あり | STS-65 の飛行報告は、EDO パレットを積んだ飛行で、着陸時に残った酸素・水素で平均 18.8 kW のまま47時間の延長が可能だったと評価しており、14日17時間の飛行に約2日を加えた約16.7日の滞在能力を消耗品の解析で示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=30）同じ報告は、STS-65 の飛行時間が14日17時間55分で、当時のシャトル計画で最長だったことを示し、16日に近い滞在の実績が解析の前提と合うことを裏づける。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=11） |
| REQ-SYS-07 | T（試験） | 根拠あり | STS-2（軌道飛行試験）の飛行報告は、打上げ前に乗員室の与圧の健全性チェックを行い、飛行中の与圧殻の漏れ量が 0.7 lb/日（STS-1 は 2.7 lb/日）だったことを示し、乗員室の圧力を保つ能力を試験で確かめた記録である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=51）STS-125 の飛行報告は、ARPCS が飛行中チェックアウトの要求をすべて満たし、約 14.7 psia からの減圧と 14.7 psia への再加圧の後に圧力制御系2のチェックアウトを行ったことを示し、14.7 psia の圧力制御を飛行中に試験した記録である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=48） |
| REQ-SYS-08 | A（解析） | 根拠あり | SODB 3.4.1.1 は、上昇軌道の軸方向荷重倍数を 3 g 以下とし、この荷重倍数をすべての intact アボートにも適用すること、SSME 1基の推力が 104% で固着すると 3 g を超えるため詳細な荷重解析が要ることを示し、3 g の限界が構造荷重の解析で管理されていることの根拠である。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=46）STS-135 の飛行報告の事象表は、上昇中に 3 g のための SSME の絞り込み指令が3基とも受け付けられ、全荷重倍数が 3 g に達した時刻を記録しており、解析どおりに加速度が 3 g に抑えられたことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=57） |
| REQ-SYS-09 | A（解析） | 根拠なし | 根拠なし：約 1,100 n.mi. のクロスレンジを解析で示した資料は無い。SCOM 9.3（p1011）の解析表は、160 n.mi. 軌道での分散を含むクロスレンジ限界を 753〜828 n.mi.、分散なしで 815〜904 n.mi. としており、要求の値に届かない。 |
| REQ-SYS-10 | A（解析） | 根拠あり | IOA（独立オービタ評価）の報告は、NSTS 22206 の規則に従い、トップダウンでハードウェアの故障モードと冗長を含む重要度（1R・2R など）を独立に解析し、NASA の FMEA/CIL と比べたことを示し、冗長構成の故障許容を解析で評価した根拠である。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=11）同じ報告は、冗長が無く乗員・機体の喪失につながる単一故障点を重要度1とし、オートランドの押しボタンの固着をそのような故障として新たに見つけてソフトウェア変更につなげたことを示し、解析で冗長の欠けを洗い出したことの例である。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=18） |
| REQ-SYS-11 | A（解析） | 根拠あり | 飛行規則 A9-1001 の注記は、電力系の各機器の喪失を「1故障許容」「0故障許容」と分類して A2-102B・C（ミッション期間の要求）に結びつけており、系の冗長を故障許容の段階で評価して判定基準を作っていることを示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1517） |
| REQ-SYS-12 | D（実証） | 根拠あり | STS-135 の飛行報告は、飛行7日目（MET 6日6時間）に GPC 4 が故障してマスターアラームが鳴り、GPC 2 を SM GPC に割り当て直して DPS を安定な構成に戻したことを示し、再突入に必須の系（DPS）の1故障目で飛行を続けた実例である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=13）同じ報告は、KSC の最初の着陸機会で軌道離脱噴射を行い、飛行時間が12日18時間27分だったことを示し、第5飛行日より後の計画どおりの EOM 着陸の実証である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=18） |
| REQ-SYS-13 | A（解析） | 根拠あり | STS-108 の飛行報告は、この飛行を11日に2日の予備日を加えた計画とし、予備日は着陸の天候回避やオービタの非常時の運用に使えるとしており、2日の延長日を計画に組み込んだことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=6）同じ報告は、着陸時に残った反応剤で平均電力のまま78時間の延長が可能だったと評価しており、2日（48時間）の延長日を消耗品がまかなえることを解析で示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=28） |
| REQ-SYS-14 | A（解析） | 根拠あり | STS-2 の飛行報告は、飛行開始から5時間を前にした燃料電池1の故障により、事前に定めた最小ミッションの指針に従って飛行を約54.5時間に短縮すると決めたことを示し、故障に応じた Go/No-Go の判定が実際に使われたことの記録である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=5）飛行規則 A9-1001 の根拠の欄は、極低温タンク1基の故障では残る消耗品が飛行期間を決め、喪失までにさらに2故障を要するため MDF とし、2基の故障で次の PLS とする理由を示しており、判定区分が故障の余裕の評価から導かれていることの根拠である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1518） |
| REQ-SYS-15 | A（解析） | 根拠あり | SCOM 9.1 は、飛行ごとに作る上昇・アボート要約キューカードが、リフトオフから MECO までに主エンジンが1基・2基・3基停止したときに取れるアボートの選択肢を示すとしており、intact アボートの境界を飛行ごとの性能解析で定めていることの根拠である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1005） |
| REQ-SYS-16 | D（実証） | 根拠あり | STS-4 の飛行報告は、燃料電池が飛行の間オービタの電力をすべて供給したことを示し、機上の発電で全電力をまかなったことの実証である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=20）STS-2 の飛行報告は、地上電力から機内電力への移行が滑らかに行われ、T-3分30秒に地上電力の接続を自動で切って完全な機内電力への移行を終えたことを示し、地上設備から切り離した後に機上の電力だけで運用したことの実証である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=32） |
| REQ-SYS-17 | A（解析） | 根拠あり | STS-2 の飛行報告は、軌道離脱噴射の時点の重量を OMS の推力を加速度で割って求め、推定重量と比べた結果（STS-2 は 1,000〜1,500 lb 軽い）を示し、着陸重量の推定を飛行データで検証する質量特性の解析が行われていることの根拠である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=99）STS-59 の飛行報告の着陸・制動パラメータの表は、着陸時のオービタ重量を 222,030 lb（推定）としており、EOM の限界 233,000 lb 以下に収まったことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=28） |
| REQ-SYS-18 | T（試験） | 根拠あり | STS-59 の飛行報告は、ハンドコントローラのトリムによる前脚の接地（デローテーション）指令をこの飛行で初めて試し、接地時の回転率が地上シミュレーションの予測の範囲にあったことを示し、前脚接地の降下率を飛行試験で確かめた記録である。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=26）同じ報告の着陸・制動パラメータの表は、前脚接地時のピッチ率を 3.80 deg/s としており、限界の 9.9°/s（11.5 fps）を十分下回ったことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=28） |

## 7. 注記（出典間の相違・構成変更）

> **注記** 本書の要求は、SCOM・運用飛行規則・SODB に記された実績の運用値から逆に起こしたもので、設計当初の要求仕様（NSTS 07700 Vol. X など）ではない。SCOM 4章の着陸重量の表は、その出典を NSTS 07700 Vol. X Book 1 としている。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/807）

> **注記** 値の版は、SCOM が2008年（OI-33）、運用飛行規則が2002年（PCN-1）である。版の違う値を1つの要求に並べるときは、要求の値の欄に両方を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

> **注記** L1・L2 の要求の SysML v2 モデル（導出・充足・検証方法）は [SSD-RQM-SYS-001](SSD-RQM-SYS-001.md) に示す（SysML v2 テキスト：model/SSD-RQM-SYS-001.sysml）。

> **注記** L1・L2 の要求ごとの検証ケースと判定、要求書 × 検証方法の検証マトリクスは [SSD-VER-SYS-001](SSD-VER-SYS-001.md) に示す（SysML v2 テキスト：model/SSD-VER-SYS-001.sysml）。

> **注記** 要求を管理策に持つハザードと、その検証の判定は [SSD-HAZ-ORB-001](SSD-HAZ-ORB-001.md) に示す（SysML v2 テキスト：model/SSD-HAZ-ORB-001.sysml）。

> **注記** REQ-SYS-06・13・17 などの、設計値・飛行の実績の値による判定は [SSD-RQF-SYS-001](SSD-RQF-SYS-001.md) に示す（SysML v2 テキスト：model/SSD-RQF-SYS-001.sysml）。

## 8. 参考文献

1. Shuttle Crew Operations Manual 1.1 Overview（USA007587 Rev. A CPN-1、PDF p31） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/31
2. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Pressure Control System（PDF p360） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360
3. Shuttle Crew Operations Manual 4.9 Acceleration Limitations（USA007587 Rev. A CPN-1、PDF p813） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/813
4. Space Shuttle Guide – Guidance, Navigation and Control — https://www.spaceshuttleguide.com/system/navigation.htm
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A2-101 Vehicle Systems Redundancy Definitions（PDF p580） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=580
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A2-102 Mission Duration Requirements（PDF p581） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=581
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A2-103 Extension Day Requirements（PDF p586） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=586
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A2-1001 Orbiter Systems Go/No-Go（PDF p800） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=800
9. Shuttle Crew Operations Manual 6.2 Ascent Aborts（USA007587 Rev. A CPN-1、PDF p855） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/855
10. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p311） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/311
11. Shuttle Crew Operations Manual 4.6 Landing Weight Limitations（USA007587 Rev. A CPN-1、PDF p807） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/807
12. Shuttle Crew Operations Manual 4.7 Descent Rate Limitations（USA007587 Rev. A CPN-1、PDF p809） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/809
13. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149
14. STS-135 Mission Report Introduction（PDF p6） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=6
15. NSTS-37452 STS-125 Mission Report（2010） Flight Day 3（PDF p14） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=14
16. STS-59 Mission Report Orbital Maneuvering Subsystem（PDF p18） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=18
17. STS-108 Mission Report Solid Rocket Boosters（PDF p19） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=19
18. STS-65 Mission Report Power Reactant Storage and Distribution Subsystem（PDF p30） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=30
19. STS-65 Mission Report Mission Summary（PDF p11） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=11
20. JSC-17959 STS-2 Orbiter Mission Report（1982年） 2.4.3節 Air Revitalization Pressure Control Subsystem（PDF p51） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=51
21. NSTS-37452 STS-125 Mission Report（2010） Atmospheric Revitalization Pressure Control System（PDF p48） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=48
22. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 3.4.1.1 Structures Subsystems（PDF p46） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=46
23. STS-135 Mission Report Sequence of Events（PDF p57） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=57
24. NASA-CR-185550 IOA: FMEA/CIL Assessment Interim Report 1.0 Executive Summary（PDF p11） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=11
25. NASA-CR-185550 IOA: FMEA/CIL Assessment Interim Report Executive Summary（PDF p18） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=18
26. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-1001 Electrical Go/No-Go Criteria（PDF p1517） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1517
27. STS-135 Mission Report Flight Day 7（GPC 4 failure）（PDF p13） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=13
28. STS-135 Mission Report Flight Day 14（PDF p18） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=18
29. STS-108 Mission Report Introduction（PDF p6） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=6
30. STS-108 Mission Report Power Reactant Storage and Distribution（PDF p28） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=28
31. STS-2 Orbiter Mission Report 1.0 Introduction/Summary（PDF p5） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=5
32. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-1001 Electrical Go/No-Go Criteria（PDF p1518） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1518
33. Shuttle Crew Operations Manual 9.1 Ascent（USA007587 Rev. A CPN-1、PDF p1005） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1005
34. STS-4 Orbiter Mission Report 2.2.4 Power Generation System（PDF p20） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=20
35. STS-2 Orbiter Mission Report 2.2.5 Electrical Power Distribution and Control（PDF p32） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=32
36. STS-2 Orbiter Mission Report 2.9.2 Mass Properties Comparison Based on Deorbit Maneuver Data（PDF p99） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=99
37. STS-59 Mission Report Landing and Braking Parameters（PDF p28） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=28
38. STS-59 Mission Report Landing (derotation)（PDF p26） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=26

## 9. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（L1 システム要求 18件、割付先・フェーズ・検証方法、電力系 L2 への展開） |
| Rev. A | 2026-10-01 | 要求ごとの検証の根拠と状態（V&V）の表を追加（根拠あり 15件・根拠なし 3件）（Rev. S） |
| Rev. B | 2026-10-02 | REQ-SYS-16 の L2 に REQ-EPS-21・22 を追加（Rev. V） |
| Rev. C | 2026-10-02 | 下位への展開の表を各系の L2 要求（17系を追加、計18系）に改めた（Rev. W） |
| Rev. D | 2026-10-03 | 要求モデル定義書 SSD-RQM-SYS-001 への参照を注記（Rev. AE） |
| Rev. E | 2026-10-03 | 検証定義書 SSD-VER-SYS-001 への参照を注記（Rev. AL） |
| Rev. F | 2026-10-03 | ハザード解析書 SSD-HAZ-ORB-001 への参照を注記（Rev. AQ） |
| Rev. G | 2026-10-03 | 要求の形式化定義書 SSD-RQF-SYS-001 への参照を注記（Rev. AS） |
