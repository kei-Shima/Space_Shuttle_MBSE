# 環境制御・生命維持（ECLSS）要求書（L2）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-REQ-ECLSS-001 |
| 表題 | 環境制御・生命維持（ECLSS）要求書（L2） |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-REQ-SYS-001 |
| 関連図 | SSD-SYS-ARC-001 図3 ECLSS 機能構成 |

## 1. 目的

ECLSSに対する要求（L2）を示し、L1 の要求（SSD-REQ-SYS-001）からの展開と、ECLSSの機能説明書（SSD-FD-ECLSS-001 と下位の説明書）の機能行・IF 行へのトレースを示す。要求から参照されない機能行について、要求が無くて妥当か、要求が抜けているかを判断する。要求は実績の運用値から導いたものである。

## 2. 要求の書き方

各要求は、要求文（〜すること）、値、根拠（出典の頁）、上位の L1 要求、割付先（機能行 F-ID・IF 行 IF-ID）、フェーズ（SSD-OPS-PHASE-001 の PH・AB の ID）、検証方法を持つ。検証方法は A（解析）、T（試験）、I（検査）、D（実証）の4つで、要求の性質から想定する方法を示す。要求はすべて、公開資料に記された実績の運用値・限界値から導いた「実績の運用値から導いた要求」である。

## 3. 上位の要求

本書の要求の上位の L1 要求を示す。

| L1 | 要求 |
|---|---|
| REQ-SYS-05 | 最大8人の乗員を運べること。 |
| REQ-SYS-06 | 通常のミッションで 4〜16 日の軌道滞在ができること。 |
| REQ-SYS-07 | 乗員室を普段着で過ごせる環境（14.7 ± 0.2 psia）に保つこと。 |
| REQ-SYS-10 | 各機能を2重・3重に冗長化し、1故障でミッションを継続でき、2故障で安全に帰還できること。 |
| REQ-SYS-14 | 系統の故障に対し、Go/No-Go の判定基準（A2-1001 ほか各章の1001番）で上昇の継続・MDF・次の PLS への着陸を判断できること。 |
| REQ-SYS-15 | 上昇中のエンジン停止に対し、intact アボート（RTLS・TAL・AOA・ATO）で計画した着陸地点に安全に戻れること。 |

## 4. ECLSS要求

| ID | 要求 | 値 | 根拠 | 上位 | 割付先 | フェーズ | 検証 |
|---|---|---|---|---|---|---|---|
| REQ-ECLSS-01 | 乗員室を 14.7±0.2 psia・窒素約80%・酸素約20% に保ち、酸素分圧を 2.95〜3.45 psi に自動で保つこと。 | 14.7±0.2 psia、PPO2 2.95〜3.45 psi | 与圧制御系は乗員室を 14.7±0.2 psia に保ち、酸素分圧を 2.95〜3.45 psi に自動で保つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360） | REQ-SYS-07 | F-ECLSS-01・F-ECLSS-03・F-ECL-CAB-01・F-ECL-CAB-04・F-ECL-PCS-01・F-ECL-PCS-02・F-ECL-PCS-03・F-ECL-PCS-07・F-ECL-PCS-08・IF-ORB-09 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-ECLSS-02 | 正・負の圧力逃し弁で乗員室構造を過大圧・過小圧から守り、急減圧（dP/dT −0.08 psi/min 以上）でクラクソンと MASTER ALARM を出すこと。 | dP/dT −0.08 psi/min | 正・負の圧力逃し弁が乗員室の構造を過大圧・過小圧から守る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360）dP/dT が毎分 0.08 psi 以上で低下するとクラクソンが鳴り、MASTER ALARM 灯が点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/367） | REQ-SYS-05・REQ-SYS-07 | F-ECL-PCS-04・F-ECL-PCS-10 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-ECLSS-03 | 非常時の 8 psia モードで酸素分圧と全圧を保ち、打上げ・帰還用スーツと非常用呼吸マスクへ呼吸用の酸素を供給できること。 | 8±0.2 psia | 8 psi の非常用調圧器は 8±0.2 psia に調圧する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/366） | REQ-SYS-05・REQ-SYS-10 | F-ECL-PCS-05・F-ECL-PCS-06・F-ECL-PCS-09 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-ECLSS-04 | EVA の前に乗員室を 10.2 psia まで下げ、エアロックを減圧・再与圧して、乗員室を減圧せずに EMU の乗員を出入りさせること。 | 10.2 psia | エアロック減圧弁で、乗員室を 10.2 psia へ下げ、EVA のためにエアロックを減圧する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369） | REQ-SYS-07 | F-ECL-ALS-01・F-ECL-ALS-02・F-ECL-ALS-03・F-ECL-ALS-04・F-ECL-ALS-05・F-ECL-ALS-07・F-ECL-ALS-08・F-ECL-CAB-03・F-ECL-PCS-11 | PH-3（軌道）・PH-5（EVA） | D（実証） |
| REQ-ECLSS-05 | ARS は乗員室の空気を循環させて、温度・湿度・二酸化炭素・一酸化炭素を制御し、乗員室のアビオニクスを冷やすこと。 | 相対湿度 30〜75% | ARS は乗員室に空気と水を循環させ、熱・相対湿度・二酸化炭素・一酸化炭素を制御し、アビオニクスを冷やす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369） | REQ-SYS-06・REQ-SYS-07 | F-ECL-ARS-01・F-ECL-ARS-02・F-ECL-ARS-03・F-ECL-ARS-04・F-ECL-ARS-05・F-ECL-CAB-02・F-ECL-CAB-05・F-ECL-ALS-09 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-ECLSS-06 | LiOH キャニスタ（長期滞在では再生式 CO2 除去装置）で二酸化炭素を除き、活性炭で臭気と微量の汚染物質を除くこと。 | LiOH キャニスタ 2（各 約 120 lb/h） | 約 120 lb/h の空気が2つの LiOH キャニスタへ送られ、二酸化炭素が除かれ、活性炭が臭気と微量の汚染物質を除く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370） | REQ-SYS-06・REQ-SYS-07 | F-ECLSS-04・F-ECL-ARS-08・F-ECL-ARS-09 | PH-3（軌道） | D（実証） |
| REQ-ECLSS-07 | 独立した2系統の水冷却ループで乗員室の熱を集めてフレオンループへ移し、ループ1はポンプを2台持つこと。 | ループ 2（ループ1 はポンプ 2台） | 2系統の独立した水冷却ループが並んで流れ、予備のループ1は水ポンプを2台持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/377） | REQ-SYS-10 | F-ECL-ARS-06・F-ECL-ARS-07・IF-ORB-13・IF-ORB-19 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-ECLSS-08 | ATCS は同じ構成の2系統のフレオンループと、放熱器・FES・アンモニアボイラの3種のヒートシンクで、SRB 分離後の全段階の機体の熱を排出すること。 | フレオンループ 2、ヒートシンク 3種 | ATCS は同じ構成の2系統のフレオンループ、コールドプレート網、液液熱交換器と、放熱器・FES・アンモニアボイラの3つのヒートシンクから成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380）再突入で大気圧が高くなると FES では十分に冷やせない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405） | REQ-SYS-10 | F-ECLSS-02・F-ECLSS-05・F-ECLSS-06・F-ECL-ATCS-01・F-ECL-ATCS-02・F-ECL-ATCS-03・F-ECL-ATCS-04・F-ECL-ATCS-05・F-ECL-ATCS-06・F-ECL-ATCS-07・IF-ORB-11・IF-ORB-12・IF-ORB-32 | PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-ECLSS-09 | 水ループ2系統またはフレオンループ2系統の喪失では、上昇中はアボート、軌道上は早期の軌道離脱を判断すること。 | 2系統の喪失 | ループの液を失うと冷却に使えず、早期の軌道離脱となり、上昇中は水ループ2系統かフレオンループ2系統の喪失でアボートとなることがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891） | REQ-SYS-14・REQ-SYS-15 | F-ECLSS-02・F-ECL-ATCS-02 | PH-2（上昇）・PH-3（軌道） | A（解析） |
| REQ-ECLSS-10 | 4基の給水タンクに燃料電池の生成水を貯めて FES・飲用・衛生に供給し、廃水タンクに湿度分離器と乗員の廃水を貯めて船外へダンプできること。 | 給水タンク 4・廃水タンク 1（各 165 lb） | 給水系は窒素で加圧される4基のタンクから成り、各タンクの使用可能容量は 165 lb である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/394）1基の廃水タンクが湿度分離器と廃棄物処理系の廃水を受け、165 lb を貯める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/401） | REQ-SYS-06 | F-ECL-H2O-01・F-ECL-H2O-02・F-ECL-H2O-03・F-ECL-H2O-04・F-ECL-H2O-05・F-ECL-H2O-06・F-ECL-H2O-07・F-ECL-H2O-08・F-ECL-H2O-09・F-ECL-ALS-10・IF-ORB-10 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-ECLSS-11 | イオン化式の煙検知器で煙濃度 2,000±200 µg/m3 または濃度の急な上昇を検知して警報を出し、アビオニクスベイの固定消火ボトルと携帯消火器で消火できること。 | 2,000±200 µg/m3、固定ボトル 3・携帯 3 | 煙濃度 2,000±200 µg/m3、または毎秒 22 µg/m3 以上の上昇で警報が出る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118）アビオニクスベイ 1・2・3A に固定した3本のハロン消火ボトルで消火する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118）乗員室には携帯消火器が3本（ミッドデッキに2本、フライトデッキに1本）ある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/121） | REQ-SYS-05 | F-ECL-FDS-01・F-ECL-FDS-02・F-ECL-FDS-03・F-ECL-FDS-04・F-ECL-FDS-05・F-ECL-FDS-06・F-ECL-FDS-09・F-ECL-FDS-10・F-ECL-FDS-11・F-ECL-FDS-12 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-ECLSS-12 | 火災・消火や生命維持の機器の喪失に対し、生命維持の Go/No-Go 基準（A17-1001）でアボート・MDF・次の PLS を判断すること。 | A17-1001 | A17-1001 は、煙検知・消火、ARS の空気、廃棄物収集、廃水などについて上昇・MDF・次の PLS の基準を示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2032）A17-1001 は、便・尿の収集と廃水タンク・ダンプの能力の基準を示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2033） | REQ-SYS-14 | F-ECL-FDS-07・F-ECL-FDS-08・F-ECL-WCS-09 | PH-2（上昇）・PH-3（軌道） | A（解析） |
| REQ-ECLSS-13 | WCS で無重量環境の乗員の生物系廃棄物を収集・処理し、尿と凝縮水は廃水タンクへ送り、空気は臭気・細菌フィルタを通して乗員室へ戻すこと。 | — | WMS は主に乗員の生物系廃棄物を収集・処理する統合した系で、ミッドデッキにある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/755） | REQ-SYS-05・REQ-SYS-06 | F-ECL-WCS-01・F-ECL-WCS-02・F-ECL-WCS-03・F-ECL-WCS-04・F-ECL-WCS-05・F-ECL-WCS-06・F-ECL-WCS-07・F-ECL-WCS-08 | PH-3（軌道） | D（実証） |

## 5. トレース表（機能行・IF → 要求）

ECLSSの機能説明書 9 件の機能行 79 件と、要求の割付先の IF 行について、参照している要求を示す。機能行のうち 77 件が要求から参照され、2 件は参照されていない（判断の欄を参照）。

| 文書 | 機能・IF | 内容 | 要求 | 判断 |
|---|---|---|---|---|
| SSD-FD-ECLSS-001 | F-ECLSS-01 | ECLSSは、圧力制御系、大気再生系、能動熱制御系、給水・廃水系の4系統から成り、乗員とアビオニクスに与圧された居住環境を提供するとともに、オービタの熱的安定を保ち、水と乗員の廃棄物の貯蔵・処分を管理する。 | REQ-ECLSS-01 | — |
| SSD-FD-ECLSS-001 | F-ECLSS-02 | ECLSSは、機体の熱的安定を維持し、乗員と搭載アビオニクスに与圧された居住環境を提供するとともに、水と乗員廃棄物の貯蔵・処理を担い、機能的に4つの系に分けられる。 | REQ-ECLSS-08・REQ-ECLSS-09 | — |
| SSD-FD-ECLSS-001 | F-ECLSS-03 | 乗員室は14.7±0.2 psiaに与圧され、平均で窒素80%・酸素20%の混合気に維持される。 | REQ-ECLSS-01 | — |
| SSD-FD-ECLSS-001 | F-ECLSS-04 | 乗員室の空気は水酸化リチウム／活性炭キャニスタを通され、二酸化炭素が除去される。 | REQ-ECLSS-06 | — |
| SSD-FD-ECLSS-001 | F-ECLSS-05 | フラッシュエバポレータ（FES）は上昇・再突入時の主冷却源で、軌道上では放熱器の補助として使われる。 | REQ-ECLSS-08 | — |
| SSD-FD-ECLSS-001 | F-ECLSS-06 | 再突入で高度約100,000 ft以下になるとFESでは十分に冷却できなくなり、以降は地上冷却が接続されるまでアンモニアボイラがフレオンループの熱を排出する。 | REQ-ECLSS-08 | — |
| SSD-FD-ECL-ALS-001 | F-ECL-ALS-01 | エアロックはミッドデッキにあり、EMUを着用した乗員が乗員室を減圧せずにペイロードベイへ出られるようにする。 | REQ-ECLSS-04 | — |
| SSD-FD-ECL-ALS-001 | F-ECL-ALS-02 | エアロック支援は、減圧・再与圧、EVA機器の補給、液冷服の水冷却、EVA機器の点検、着用、通信を提供する。 | REQ-ECLSS-04 | — |
| SSD-FD-ECL-ALS-001 | F-ECL-ALS-03 | オービタは、サービス・冷却アンビリカル（SCU）を介して、EVA準備時と終了後のEMUへ電力、酸素、液冷服の冷却、水を供給する。 | REQ-ECLSS-04 | — |
| SSD-FD-ECL-ALS-001 | F-ECL-ALS-04 | EVA前は乗員室を14.7 psiaから12.5 psiaへ下げ、プレブリーズの後に10.2 psiaへ減圧する。 | REQ-ECLSS-04 | — |
| SSD-FD-ECL-ALS-001 | F-ECL-ALS-05 | エアロックは2段階（5 psia、0 psia）で減圧し、エアロック減圧弁から船外へ排気する。 | REQ-ECLSS-04 | — |
| SSD-FD-ECL-ALS-001 | F-ECL-ALS-06 | EMUの携帯生命維持装置は、酸素、電力用バッテリ、冷却用の水、CO2除去用の水酸化リチウムを7時間分持つ。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-ECLSS-04・REQ-ECLSS-05・REQ-ECLSS-10）が受け持つ構成・運用の記述。 |
| SSD-FD-ECL-ALS-001 | F-ECL-ALS-07 | シャトルの段階減圧プロトコルでは、乗員室を14.7から10.2 psiaへ下げて空気を酸素26.5%に富化し、最初の適用はSTS-41B（1984年2月）である。 | REQ-ECLSS-04 | — |
| SSD-FD-ECL-ALS-001 | F-ECL-ALS-08 | 外部エアロックには内側・EV・ドッキングの3枚のハッチがあり、各ハッチは2個の均圧弁と両側の差圧計を持ち、乗員室側へ開いて閉じたときに圧力で密着する。 | REQ-ECLSS-04 | — |
| SSD-FD-ECL-ALS-001 | F-ECL-ALS-09 | エアロックには換気口がないため、乗員がミッドデッキ床の継手からダクトを張り、ブースタファン（2台、1台ずつ使用）でオービタの調整空気を送って湿度を制御し、CO2・O2・N2のよどみを防ぐ。 | REQ-ECLSS-05 | — |
| SSD-FD-ECL-ALS-001 | F-ECL-ALS-10 | 与圧区画の外を通るEMU補給・ISS給水用の6本の水配管は2区域に分かれ、各配管に巻いた3系統のヒータ（1系統ずつ使用）で加温する。 | REQ-ECLSS-10 | — |
| SSD-FD-ECL-ALS-001 | F-ECL-ALS-11 | エアロックの圧力、水配管の圧力と温度、構造温度、ベスティビュール弁の状態は、SM OPS 2のSPEC 177 EXTERNAL AIRLOCKに表示される。 | （なし） | 要求なしで妥当：同じ下位機能の要求（REQ-ECLSS-04・REQ-ECLSS-05・REQ-ECLSS-10）が受け持つ構成・運用の記述。 |
| SSD-FD-ECL-ARS-001 | F-ECL-ARS-01 | ARSは相対湿度を30〜75%に制御し、二酸化炭素と一酸化炭素を無害な濃度に保ち、乗員室の温度と換気を制御し、フライトデッキとミッドデッキの電子機器を冷却する。 | REQ-ECLSS-05 | — |
| SSD-FD-ECL-ARS-001 | F-ECL-ARS-02 | キャビンファンが吸い込んだ空気はフィルタで粒子を除かれ、一部は水酸化リチウムキャニスタでCO2と臭気を除去された後、キャビン熱交換器で水冷却ループにより冷却される。 | REQ-ECLSS-05 | — |
| SSD-FD-ECL-ARS-001 | F-ECL-ARS-03 | 熱交換器で凝縮した水分は湿度分離器（ファンセパレータ）で吸い出されて廃水タンクへ送られ、その量は最大で毎時約4 lbである。 | REQ-ECLSS-05 | — |
| SSD-FD-ECL-ARS-001 | F-ECL-ARS-04 | キャビン熱交換器を出た空気の一部は一酸化炭素除去装置へ送られ、一酸化炭素が二酸化炭素に変換される。 | REQ-ECLSS-05 | — |
| SSD-FD-ECL-ARS-001 | F-ECL-ARS-05 | 乗員室容積2,300 ft³に対して毎分330 ft³の空気を循環させ、約7分で室内空気が1回入れ替わる。 | REQ-ECLSS-05 | — |
| SSD-FD-ECL-ARS-001 | F-ECL-ARS-06 | 独立した2系統の水冷却ループがあり、ループ1はポンプ2台、ループ2はポンプ1台を持つ。 | REQ-ECLSS-07 | — |
| SSD-FD-ECL-ARS-001 | F-ECL-ARS-07 | 水冷却ループは、キャビン熱交換器、3つのアビオニクスベイの熱交換器とコールドプレート、IMU熱交換器、液冷服熱交換器、飲料水チラーの熱を集め、水／フレオン熱交換器でATCSへ渡す。 | REQ-ECLSS-07 | — |
| SSD-FD-ECL-ARS-001 | F-ECL-ARS-08 | 長期滞在（EDO）飛行では、水酸化リチウムの代わりに再生式CO2除去装置（RCRS）を使う場合がある。 | REQ-ECLSS-06 | — |
| SSD-FD-ECL-ARS-001 | F-ECL-ARS-09 | RCRSは固体アミンでCO2と水蒸気を吸着して真空へ脱着し、30分周期でベッドを切り替える。 | REQ-ECLSS-06 | — |
| SSD-FD-ECL-ATCS-001 | F-ECL-ATCS-01 | ATCSは、ARSの熱を水／フレオン熱交換器で、燃料電池の熱を各燃料電池熱交換器で受け取り、ECLSS酸素供給ラインのPRSD酸素と油圧作動油を加温する。 | REQ-ECLSS-08 | — |
| SSD-FD-ECL-ATCS-001 | F-ECL-ATCS-02 | 同一構成の2系統のフレオン21冷却ループ、アビオニクス用コールドプレート網、液液熱交換器、放熱器・フラッシュエバポレータ（FES）・アンモニアボイラの3種のヒートシンクから成る。 | REQ-ECLSS-08・REQ-ECLSS-09 | — |
| SSD-FD-ECL-ATCS-001 | F-ECL-ATCS-03 | 地上ではGSE熱交換器で排熱し、打上げ後約125秒でFESを起動し、軌道上でペイロードベイドアを開くまでFESで排熱する。 | REQ-ECLSS-08 | — |
| SSD-FD-ECL-ATCS-001 | F-ECL-ATCS-04 | 軌道上は放熱器で排熱し、熱負荷と姿勢の組合せで放熱器の能力を超えるとFESが自動的に補助する。 | REQ-ECLSS-08 | — |
| SSD-FD-ECL-ATCS-001 | F-ECL-ATCS-05 | 再突入では高度約100,000 ftまでFES、それ以下は地上冷却が接続されるまでアンモニアボイラで排熱する。 | REQ-ECLSS-08 | — |
| SSD-FD-ECL-ATCS-001 | F-ECL-ATCS-06 | 基本構成の放熱器は21,500 Btu/hの排熱を想定し、4枚目のパネルを追加すると29,000 Btu/hとなる。 | REQ-ECLSS-08 | — |
| SSD-FD-ECL-ATCS-001 | F-ECL-ATCS-07 | フレオンは中胴のコールドプレート網と後部アビオニクスベイ4・5・6を通り、電子機器を冷却する。 | REQ-ECLSS-08 | — |
| SSD-FD-ECL-CAB-001 | F-ECL-CAB-01 | 乗員室は14.7±0.2 psiaに与圧され、平均で窒素80%・酸素20%の混合気に維持される。 | REQ-ECLSS-01 | — |
| SSD-FD-ECL-CAB-001 | F-ECL-CAB-02 | 相対湿度、二酸化炭素・一酸化炭素濃度、温度、換気はARSが制御する。 | REQ-ECLSS-05 | — |
| SSD-FD-ECL-CAB-001 | F-ECL-CAB-03 | EVA前には乗員室圧を10.2 psiaまで下げ、EVA終了後に14.7 psiaへ戻す。 | REQ-ECLSS-04 | — |
| SSD-FD-ECL-CAB-001 | F-ECL-CAB-04 | 乗員室の容積は2,300 ft³である。 | REQ-ECLSS-01 | — |
| SSD-FD-ECL-CAB-001 | F-ECL-CAB-05 | 乗員室構造の熱容量により、再突入から乗員の退出まで室温は95°Fを超えない。 | REQ-ECLSS-05 | — |
| SSD-FD-ECL-FDS-001 | F-ECL-FDS-01 | 煙検知・消火機能は、乗員室のアビオニクスベイ、乗員室、Spacelab与圧モジュールに設けられる。 | REQ-ECLSS-11 | — |
| SSD-FD-ECL-FDS-001 | F-ECL-FDS-02 | イオン化式の検知素子が煙濃度または濃度の変化率を検知して警報を発し、煙濃度の情報をCRTと計器盤L1に表示する。 | REQ-ECLSS-11 | — |
| SSD-FD-ECL-FDS-001 | F-ECL-FDS-03 | 煙濃度2,200±200 µg/m³、または毎秒22 µg/m³の上昇が20秒間に8回連続すると、L1の煙検知灯、C/Wマスターアラーム、サイレンが作動する。 | REQ-ECLSS-11 | — |
| SSD-FD-ECL-FDS-001 | F-ECL-FDS-04 | 3つのアビオニクスベイには、それぞれFreon 1301（Halon 1301）の消火ボトルが1本ある。 | REQ-ECLSS-11 | — |
| SSD-FD-ECL-FDS-001 | F-ECL-FDS-05 | 固定消火ボトルは、計器盤L1で該当ベイのスイッチをアームし、放出ボタンを2秒以上押して作動させる。 | REQ-ECLSS-11 | — |
| SSD-FD-ECL-FDS-001 | F-ECL-FDS-06 | 乗員室には携帯消火器が3本（ミッドデッキに2本、フライトデッキに1本）あり、先細のノズルを計器盤の消火穴に差し込んでパネル内部の火災に対処でき、アビオニクスベイ消火器の予備にもなる。 | REQ-ECLSS-11 | — |
| SSD-FD-ECL-FDS-001 | F-ECL-FDS-07 | 消火器は宇宙では実演目的でしか放出されたことがなく、飛行中に放出した場合は機内大気と表面の清浄化のため直ちに地球へ帰還するとされる。 | REQ-ECLSS-12 | — |
| SSD-FD-ECL-FDS-001 | F-ECL-FDS-08 | 運用中、乗員が電源遮断で火災を未然に防いだ事象が5件、煙検知器回路の誤報・故障が15件あった。 | REQ-ECLSS-12 | — |
| SSD-FD-ECL-FDS-001 | F-ECL-FDS-09 | オービタには、ミッドデッキとフライトデッキのアビオニクス冷却空気の戻りラインに9個のイオン化式煙検知器があり、Spacelabにはさらに6個がある。 | REQ-ECLSS-11 | — |
| SSD-FD-ECL-FDS-001 | F-ECL-FDS-10 | 煙検知・消火は急減圧とともにクラス1（緊急）警報に属し、MDMやソフトウェアを介さないハードウェアのみで処理される一方、煙の情報はSM SYS SUMM 1画面にも表示される。 | REQ-ECLSS-11 | — |
| SSD-FD-ECL-FDS-001 | F-ECL-FDS-11 | 煙感知器と各ベイの消火ボトルの点火回路は、主母線A（L/R FLT DK、BAY 2A/3B、FIRE SUPPR BAY 3）・B（BAY 1B/3A、FIRE SUPPR BAY 1）・C（CABIN、BAY 1A/2B、FIRE SUPPR BAY 2）の遮断器（パネルO14・O15・O16）から給電される。 | REQ-ECLSS-11 | — |
| SSD-FD-ECL-FDS-001 | F-ECL-FDS-12 | キャビンまたはベイの両ファンが故障して空気が循環しない場合は、その区画の煙検知を喪失とみなす。空気の循環がないと、火元が感知器から離れていれば煙の粒子が間に合って届かないためである（A17-2）。 | REQ-ECLSS-11 | — |
| SSD-FD-ECL-H2O-001 | F-ECL-H2O-01 | 給水・廃水系は、FES、乗員の飲用、衛生のための水を供給し、給水系は燃料電池の生成水を、廃水系はキャビン湿度分離器と乗員からの廃水を貯蔵する。 | REQ-ECLSS-10 | — |
| SSD-FD-ECL-H2O-001 | F-ECL-H2O-02 | ミッドデッキ床下に給水タンク4基と廃水タンク1基があり、各タンクの使用可能容量は165 lbである。 | REQ-ECLSS-10 | — |
| SSD-FD-ECL-H2O-001 | F-ECL-H2O-03 | 3基の燃料電池は、最大で毎時25 lbの飲料水を生成する。 | REQ-ECLSS-10 | — |
| SSD-FD-ECL-H2O-001 | F-ECL-H2O-04 | 燃料電池からの水素を含む水は2台の水素分離器を通り、余剰水素の85%が除去される。 | REQ-ECLSS-10 | — |
| SSD-FD-ECL-H2O-001 | F-ECL-H2O-05 | タンクAに入る水は微生物フィルタを通って約0.5 ppmのヨウ素が添加され、通常は乗員の飲用に使われる。 | REQ-ECLSS-10 | — |
| SSD-FD-ECL-H2O-001 | F-ECL-H2O-06 | タンクA・Bの水は、エアロックのEMU補給、FES給水系A、船外ダンプに使われる。 | REQ-ECLSS-10 | — |
| SSD-FD-ECL-H2O-001 | F-ECL-H2O-07 | ギャレー給水弁を開くと、給水は水冷却ループの飲料水チラーで冷やす経路と常温の経路に分かれてギャレーへ送られ、ギャレーを搭載しない飛行ではApollo給水器につながれる。 | REQ-ECLSS-10 | — |
| SSD-FD-ECL-H2O-001 | F-ECL-H2O-08 | 給水・廃水のダンプ配管は非常用クロスタイでつなぐことができ、一方のノズルから他方の水をダンプし、CWCに給水や廃水を貯めることもできる。 | REQ-ECLSS-10 | — |
| SSD-FD-ECL-H2O-001 | F-ECL-H2O-09 | 給水・廃水タンクは窒素系統1・2のいずれかから15.5〜17.0 psigの窒素で加圧され、打上げ時はタンクAを乗員室へベントして燃料電池の浸水を防ぐ。 | REQ-ECLSS-10 | — |
| SSD-FD-ECL-PCS-001 | F-ECL-PCS-01 | ARPCSは酸素・窒素の2ガス方式で、酸素は反応剤貯蔵・分配（PRSD）サブシステムから、窒素は窒素貯蔵タンクから得る。 | REQ-ECLSS-01 | — |
| SSD-FD-ECL-PCS-001 | F-ECL-PCS-02 | 乗員室を14.7±0.2 psiaに与圧し、平均で窒素80%・酸素20%の混合気に保つ。 | REQ-ECLSS-01 | — |
| SSD-FD-ECL-PCS-001 | F-ECL-PCS-03 | 酸素分圧は2.95〜3.45 psiaに自動で保たれ、約11.5 psiaの窒素を加えて全圧14.7 psiaとする。 | REQ-ECLSS-01 | — |
| SSD-FD-ECL-PCS-001 | F-ECL-PCS-04 | 正・負の圧力逃し弁が、乗員室構造を過大圧・過小圧から保護する。 | REQ-ECLSS-02 | — |
| SSD-FD-ECL-PCS-001 | F-ECL-PCS-05 | 打上げ・帰還用スーツのヘルメットと非常用呼吸マスクへ、呼吸用酸素を直接供給する。 | REQ-ECLSS-03 | — |
| SSD-FD-ECL-PCS-001 | F-ECL-PCS-06 | 窒素は給水・廃水タンクの加圧にも使われる。 | REQ-ECLSS-03 | — |
| SSD-FD-ECL-PCS-001 | F-ECL-PCS-07 | 与圧系は2系統の酸素系と2系統の気体窒素系から成り、酸素系は燃料電池と同じPRSDから供給される。 | REQ-ECLSS-01 | — |
| SSD-FD-ECL-PCS-001 | F-ECL-PCS-08 | PRSDの極低温超臨界酸素は、気体として835〜852 psiaで与圧制御系へ供給される。 | REQ-ECLSS-01 | — |
| SSD-FD-ECL-PCS-001 | F-ECL-PCS-09 | ARPCSは、1気圧の環境と非常時の8 psiaモードの両方で、酸素分圧と全圧を制御する。 | REQ-ECLSS-03 | — |
| SSD-FD-ECL-PCS-001 | F-ECL-PCS-10 | 乗員室圧・PPO2・O2/N2流量はO1の計器とSM SYS SUMM 1・DISP 66に表示され、dP/dTが0.08 psi/min以上で低下するとクラクソンが鳴りMASTER ALARM灯が点灯する（SCOM 2.9節）。 | REQ-ECLSS-02 | — |
| SSD-FD-ECL-PCS-001 | F-ECL-PCS-11 | EVA前の10.2 psia運用では、10.2 psiaのキャビンレギュレータがないため、乗員室圧とPPO2を手動で管理する（訓練マニュアル2.7.3節）。 | REQ-ECLSS-04 | — |
| SSD-FD-ECL-WCS-001 | F-ECL-WCS-01 | WCSは、無重量環境で乗員の生物系廃棄物を収集・処理する統合システムで、ミッドデッキの乗員出入口ハッチのすぐ後方に置かれる。 | REQ-ECLSS-13 | — |
| SSD-FD-ECL-WCS-001 | F-ECL-WCS-02 | 糞便と紙類を収集・貯蔵・乾燥し、尿を処理して廃水タンクへ送り、エアロックからのEMU凝縮水も廃水タンクへ移す。 | REQ-ECLSS-13 | — |
| SSD-FD-ECL-WCS-001 | F-ECL-WCS-03 | 便器、小便器、ファンセパレータ、臭気・細菌フィルタ、真空ベントのクイックディスコネクト、制御器で構成される。 | REQ-ECLSS-13 | — |
| SSD-FD-ECL-WCS-001 | F-ECL-WCS-04 | ファンセパレータは搬送空気から液体を分離し、液体は廃水タンクへ、空気は臭気・細菌フィルタを通って乗員室へ戻る。 | REQ-ECLSS-13 | — |
| SSD-FD-ECL-WCS-001 | F-ECL-WCS-05 | ファンセパレータの制御にはDC電力、運転にはAC電力を使う。 | REQ-ECLSS-13 | — |
| SSD-FD-ECL-WCS-001 | F-ECL-WCS-06 | 真空ベント系は、使っていない便器の固形廃棄物の乾燥のほか、ウェットトラッシュ区画の排気と、燃料電池の生成水から水素分離器が除いたH2の船外排出に使われる。 | REQ-ECLSS-13 | — |
| SSD-FD-ECL-WCS-001 | F-ECL-WCS-07 | 臭気・細菌フィルタはアンモニアを除くよう設計され、EVA後の大気除染では便器を運転して乗員室の空気をフィルタに通す。 | REQ-ECLSS-13 | — |
| SSD-FD-ECL-WCS-001 | F-ECL-WCS-08 | 廃棄物収集器の圧力を計測し、真空ベント隔離弁が閉で故障した場合は、この圧力で真空ベントのオリフィスからの排気を監視する。 | REQ-ECLSS-13 | — |
| SSD-FD-ECL-WCS-001 | F-ECL-WCS-09 | WCSの便器や尿収集が使えない場合は、便はアポロ型の便袋、尿は男性用の採尿具（UCD）か女性用の吸収具（UAS）で集める。 | REQ-ECLSS-12 | — |
| SSD-FD-EPS-001 | IF-ORB-09 | （IF の行。内容は所有文書） | REQ-ECLSS-01 | — |
| SSD-FD-EPS-001 | IF-ORB-10 | （IF の行。内容は所有文書） | REQ-ECLSS-10 | — |
| SSD-FD-EPS-001 | IF-ORB-11 | （IF の行。内容は所有文書） | REQ-ECLSS-08 | — |
| SSD-FD-ECLSS-001 | IF-ORB-12 | （IF の行。内容は所有文書） | REQ-ECLSS-08 | — |
| SSD-FD-ECLSS-001 | IF-ORB-13 | （IF の行。内容は所有文書） | REQ-ECLSS-07 | — |
| SSD-FD-ECLSS-001 | IF-ORB-19 | （IF の行。内容は所有文書） | REQ-ECLSS-07 | — |
| SSD-FD-EXT-001 | IF-ORB-32 | （IF の行。内容は所有文書） | REQ-ECLSS-08 | — |

## 6. 要求から参照されない機能行

要求から参照されない機能行 2 件のうち、2 件は「要求なしで妥当」、0 件は「要求が抜けている」と判断した。「要求なしで妥当」は、系の全般の記述（親の説明書）か、同じ下位機能に要求があり、その要求が受け持つ構成・数量・運用の記述であるものである。「要求が抜けている」は、今後 L2 要求を足す候補である。文書ごとの件数を示す。

| 文書 | 機能行 | 要求から参照 | 要求なしで妥当 | 要求が抜けている |
|---|---|---|---|---|
| SSD-FD-ECLSS-001 | 6 | 6 | 0 | 0 |
| SSD-FD-ECL-ALS-001 | 11 | 9 | 2 | 0 |
| SSD-FD-ECL-ARS-001 | 9 | 9 | 0 | 0 |
| SSD-FD-ECL-ATCS-001 | 7 | 7 | 0 | 0 |
| SSD-FD-ECL-CAB-001 | 5 | 5 | 0 | 0 |
| SSD-FD-ECL-FDS-001 | 12 | 12 | 0 | 0 |
| SSD-FD-ECL-H2O-001 | 9 | 9 | 0 | 0 |
| SSD-FD-ECL-PCS-001 | 11 | 11 | 0 | 0 |
| SSD-FD-ECL-WCS-001 | 9 | 9 | 0 | 0 |

## 7. 検証（V&V）

各要求の検証方法（解析 A・試験 T・検査 I・実証 D）について、その方法で要求が満たされたことを示す公開資料の頁を「検証の根拠」に示す（13件のうち根拠あり 12件・根拠なし 1件）。根拠が見つからないものは「根拠なし」とし、理由を書いた。

| ID | 検証方法 | 状態 | 検証の根拠 |
|---|---|---|---|
| REQ-ECLSS-01 | D（実証） | 根拠あり | STS-114 では ARPCS が全期間正常に働いた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=49） |
| REQ-ECLSS-02 | T（試験） | 根拠あり | STS-114 では ARPCS が全期間正常に働いた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=49） |
| REQ-ECLSS-03 | T（試験） | 根拠あり | STS-114 では ARPCS が全期間正常に働いた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=49） |
| REQ-ECLSS-04 | D（実証） | 根拠あり | STS-114 ではエアロック系が3回の EVA を含む ISS の運用をすべて支えた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=50） |
| REQ-ECLSS-05 | D（実証） | 根拠あり | STS-114 では ARS が満足に働き、データに異常は無かった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=49） |
| REQ-ECLSS-06 | D（実証） | 根拠あり | STS-114 では ARS が満足に働き、データに異常は無かった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=49） |
| REQ-ECLSS-07 | D（実証） | 根拠あり | STS-114 では ARS が満足に働き、データに異常は無かった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=49） |
| REQ-ECLSS-08 | D（実証） | 根拠あり | STS-114 では ATCS のすべてのパラメータが正常な性能を示した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=49） |
| REQ-ECLSS-09 | A（解析） | 根拠あり | STS-114 では ATCS のすべてのパラメータが正常な性能を示した。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=49） |
| REQ-ECLSS-10 | D（実証） | 根拠あり | STS-114 では給水・廃水系が全期間正常に働いた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=50） |
| REQ-ECLSS-11 | T（試験） | 根拠あり | STS-114 では煙検知系に煙の発生の兆候は無く、消火系は使われなかった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=51） |
| REQ-ECLSS-12 | A（解析） | 根拠なし | 根拠なし：基準を適用した飛行の判断の実例を示す公開資料を確かめていない。 |
| REQ-ECLSS-13 | D（実証） | 根拠あり | STS-114 では WCS が満足に働き、乗員から飛行中の異常の報告は無かった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=51） |

## 8. 注記（出典間の相違・構成変更）

> **注記** トレース表の「要求なしで妥当」は、親の説明書の全般の記述か、同じ下位機能（文書）に割り付けた要求が受け持つ構成・運用の記述であることを根拠に、文書ごとにまとめて判断したもので、機能行1件ずつに要求の要否を検討したものではない。

> **注記** ECLSS の説明書は下位が深く（87件）、本書のトレースの対象は親（SSD-FD-ECLSS-001）と第1段の下位8件（ALS・ARS・ATCS・CAB・FDS・H2O・PCS・WCS）の機能行とした。第2段より下の機能行は、第1段の説明書の要求が受け持つものとし、行ごとのトレースは今後の課題とする。

## 9. 参考文献

1. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Pressure Control System（PDF p360） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/360
2. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 PPO2 Control（続き）（PDF p367） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/367
3. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Oxygen/Nitrogen Manifold・PPO2 Control（PDF p366） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/366
4. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p369） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369
5. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p370） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/370
6. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Water Coolant Loop System（PDF p377） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/377
7. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p380） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380
8. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p405） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/405
9. Shuttle Crew Operations Manual 6.8 Systems Failures（USA007587 Rev. A CPN-1、PDF p891） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891
10. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Supply Water System（PDF p394） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/394
11. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Waste Water System（PDF p401） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/401
12. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p118） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118
13. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Fire and Smoke Subsystem Control Circuit Breakers・携帯消火器（PDF p121） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/121
14. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-1001 Life Support Go/No-Go Criteria（表）（PDF p2032） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2032
15. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-1001 LIFE SUPPORT GO/NO-GO CRITERIA（PDF p2033） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2033
16. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.25節 Waste Management System（PDF p755） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/755
17. STS-114 Mission Report Active Thermal Control System（PDF p49） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=49
18. JSC-63290 STS-114 Space Shuttle Mission Report（2006年） Airlock System（PDF p50） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=50
19. JSC-63290 STS-114 Space Shuttle Mission Report（2006年） Supply and Waste Water System（続き）（PDF p51） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=51

## 10. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（L2 要求 13件、機能行 79件とのトレース、検証の根拠） |
